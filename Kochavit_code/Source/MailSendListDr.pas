unit MailSendListDr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, MyDBGrid, edbcomps;

type
  TfrmMailSendListDr = class(TForm)
    Panel1: TPanel;
    btnClose: TBitBtn;
    Panel2: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    qrEMailsSendDr: TEDBQuery;
    dsEMailsSendDs: TDataSource;
    qrEMailsSendDrId: TIntegerField;
    qrEMailsSendDrClientId: TIntegerField;
    qrEMailsSendDrCarId: TIntegerField;
    qrEMailsSendDrDriverId: TIntegerField;
    qrEMailsSendDrMoed: TDateField;
    qrEMailsSendDrSubject: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEMailsSendDrAttachedGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMailSendListDr: TfrmMailSendListDr;

implementation
uses
  DriverEditDM;
{$R *.dfm}

procedure TfrmMailSendListDr.FormCreate(Sender: TObject);
begin
  qrEMailsSendDr.Open;
end;

procedure TfrmMailSendListDr.qrEMailsSendDrAttachedGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TfrmMailSendListDr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrEMailsSendDr.Close;
end;

end.
