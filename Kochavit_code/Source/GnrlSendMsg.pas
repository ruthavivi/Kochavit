unit GnrlSendMsg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, MainDM, edbcomps;

type
  TdlgGnrlSendMsg = class(TForm)
    btnPreview: TBitBtn;
    btnPrint: TBitBtn;
    btnEmail: TBitBtn;
    btnCancel: TBitBtn;
    qrGnrl: TEDBQuery;
    Panel1: TPanel;
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgGnrlSendMsg: TdlgGnrlSendMsg;

implementation

{$R *.dfm}

procedure TdlgGnrlSendMsg.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TdlgGnrlSendMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
