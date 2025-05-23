unit Password;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, edbcomps;

type
  TfrmPassword = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edOldG: TEdit;
    edNewG: TEdit;
    edCheckG: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edOldB: TEdit;
    edNewB: TEdit;
    edCheckB: TEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    StaticText1: TStaticText;
    tbEnter: TEDBTable;
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    function OldPassOk(dbPass, edPass, p: String): Boolean;
    function NewPassOk(edNew, edCheck, p: String): Boolean;
  public
    { Public declarations }
  end;

var
  frmPassword: TfrmPassword;

implementation

{$R *.dfm}

procedure TfrmPassword.btnSaveClick(Sender: TObject);
begin
   with tbEnter do
   begin
       try
           Open;
           if OldPassOk(FieldByName('GnrlPass').AsString,
                   edOldG.Text, 'g') then
           begin
               if NewPassOk(edNewG.Text, edCheckG.Text, 'g') then
               begin
                   Edit;
                   FieldByName('GnrlPass').AsString := edNewG.Text;
                   Post;
               end;
           end;
           if OldPassOk(FieldByName('BillPass').AsString,
                   edOldB.Text, 'b') then
           begin
               if NewPassOk(edNewB.Text, edCheckB.Text, 'b') then
               begin
                   Edit;
                   FieldByName('BillPass').AsString := edNewB.Text;
                   Post;
               end;
           end;
       finally
           Close;
       end;
   end;
   Close;
end;

function TfrmPassword.OldPassOk(dbPass, edPass, p: String): Boolean;
var
   msg: String;
begin
   Result := True;

   if (edPass <> dbPass) then
   begin
       if p = 'g' then
           msg := '...����� ����� ����� �����'
       else
           msg := '...����� ����� ������� �����';
       MessageDlg(msg, mtError, [mbOK], 0);
       Result := False;
   end;
end;

function TfrmPassword.NewPassOk(edNew, edCheck, p: String): Boolean;
var
   msg: String;
begin
   Result := True;
   if (edNew <> edCheck) then
   begin
       if p = 'g' then
           msg := '����� �����...����� �� �����'
       else
           msg := '����� �������...����� �� �����';
       MessageDlg(msg, mtError, [mbOK], 0);
       Result := False;
   end;
end;

procedure TfrmPassword.btnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPassword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
