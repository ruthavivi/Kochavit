unit MailSendListCr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, MyDBGrid, edbcomps;

type
  TfrmMailSendListCr = class(TForm)
    Panel1: TPanel;
    btnClose: TBitBtn;
    Panel2: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    qrEMailsSendCr: TEDBQuery;
    dsEMailsSendCr: TDataSource;
    qrEMailsSendCrId: TIntegerField;
    qrEMailsSendCrClientId: TIntegerField;
    qrEMailsSendCrCarId: TIntegerField;
    qrEMailsSendCrDriverId: TIntegerField;
    qrEMailsSendCrMoed: TDateField;
    qrEMailsSendCrSubject: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrEMailsSendCrAttachedGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMailSendListCr: TfrmMailSendListCr;

implementation
uses
  CarEditDM;
{$R *.dfm}

procedure TfrmMailSendListCr.FormCreate(Sender: TObject);
begin
  qrEMailsSendCr.Open;
end;

procedure TfrmMailSendListCr.qrEMailsSendCrAttachedGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TfrmMailSendListCr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrEMailsSendCr.Close;
end;

end.
