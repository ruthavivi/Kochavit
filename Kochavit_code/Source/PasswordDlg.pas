unit PasswordDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Dialogs, Buttons, Db;

type
  TfrmPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    btnOk: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    Counter: Integer;
    Pass: String;
  public
    { Public declarations }
    oK: Boolean;
  end;

var
  frmPasswordDlg: TfrmPasswordDlg;

implementation

{$R *.DFM}
uses
   Main, DataDM, DialogsHeb;

procedure TfrmPasswordDlg.FormCreate(Sender: TObject);
begin
   Counter := 0;
end;

procedure TfrmPasswordDlg.btnOkClick(Sender: TObject);
var
  InputVal: string;
begin
  InputVal := Password.Text;
  if (InputVal = '') then
  begin
    MessageDlgH('�� ������ �����', mtError, [mbOk], 0, 0);
    Counter := Counter +1;
    Password.SetFocus;
  end
  else
  begin
    dmData.qrGnrl.SQL.Text := 'SELECT UserName, Role FROM KEnter WHERE Password = '+ QuotedStr(InputVal);
    try
      dmData.qrGnrl.Open;
      if not dmData.qrGnrl.IsEmpty then
      begin
        frmMain.UserName := dmData.qrGnrl.FieldByName('UserName').AsString;
        frmMain.Role := dmData.qrGnrl.FieldByName('Role').AsString;
        oK := True;
      end
      else
      begin        
         MessageDlgH('����� ����� �����', mtError, [mbOk], 0, 0);
         Counter := Counter +1;
         Password.SetFocus;
      end;
    finally
      dmData.qrGnrl.Close;
    end;   
  end;

  if  Ok or (Counter=3) then
    Close;
end;

procedure TfrmPasswordDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

end.

