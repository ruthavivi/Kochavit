unit WebInteraction;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  UploadWebDataDM, DownloadWebDataDM, DateUtils;

type
  TfrmWebInteraction = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    GroupBox1: TGroupBox;
    ProductName: TLabel;
    Version: TLabel;
    dtF: TDateTimePicker;
    dtP: TDateTimePicker;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateLastSync;
  public
    { Public declarations }
  end;

var
  frmWebInteraction: TfrmWebInteraction;

implementation
{$R *.dfm}
uses
  Dialogs, DialogsHeb, Main, MainDM;

procedure TfrmWebInteraction.FormCreate(Sender: TObject);
begin
  dtF.Date := IncWeek(Now, -2);
  dtP.Date := IncDay(Now, 7);
end;

procedure TfrmWebInteraction.BitBtn1Click(Sender: TObject);
begin
  dmDownloadWebData := TdmDownloadWebData.Create(Self);
  try
    dmDownloadWebData.ImportDataFromWeb;
  finally
    dmDownloadWebData.Free;
  end;

  dmUploadWebData := TdmUploadWebData.Create(Self);
  try
    dmUploadWebData.dtFrom := dtF.DateTime;
    dmUploadWebData.dtTill := dtP.DateTime;
    dmUploadWebData.ExportDataToWeb;
  finally
    dmUploadWebData.Free;
  end;

  MessageDlgH('...סנכרון הנתונים הסתיים בהצלחה', mtInformation, [mbOk], 0, 0);
  UpdateLastSync;
  Close;
end;

procedure TfrmWebInteraction.UpdateLastSync;
var
  LastSync: String;
begin
  LastSync := FormatDateTime('dd/mm/yyyy hh:nn', Now);
  dmMain.qrGnrl.SQL.Text := 'UPDATE KDefault SET LastSync = ' + QuotedStr(LastSync);
  dmMain.qrGnrl.ExecSQL;
  frmMain.Caption := 'סינכרון אחרון: ' +  LastSync;
end;

procedure TfrmWebInteraction.OKButtonClick(Sender: TObject);
begin
  Close;
end;


end.

