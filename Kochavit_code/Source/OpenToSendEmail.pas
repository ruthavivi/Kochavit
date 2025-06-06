unit OpenToSendEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, SendEMail, Vcl.ComCtrls, Data.DB, edbcomps;

type
  TfrmOpenToSendEmail = class(TForm)
    Panel1: TPanel;
    edSubject: TLabeledEdit;
    Label1: TLabel;
    Panel2: TPanel;
    btnSend: TBitBtn;
    btnCancel: TBitBtn;
    btnAttach: TSpeedButton;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    lstAttached: TListBox;
    edBody: TMemo;
    btnPrefferedDir: TSpeedButton;
    procedure btnAttachClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnPrefferedDirClick(Sender: TObject);
  private
    { Private declarations }
    SingleEmail: Boolean;
    ToEmails: TStringList;
    qrList: TEDBQuery;
    SrcData, DestName, PrefferdDir, InitialDir: String;
//    procedure SetRichText(r: TRichEdit; RTF: string);
    function GetSignature: String;
    function HaveEMails: Boolean;
  public
    procedure SetData(pInitialDir, pDestName: string; pToEmails: TStringList); Overload;
    procedure SetData(pSrcData: string; pqrList: TEDBQuery); Overload;
  end;

var
  frmOpenToSendEmail: TfrmOpenToSendEmail;

implementation
uses
  MainDM, DialogsHeb;
{$R *.dfm}


procedure TfrmOpenToSendEmail.SetData(pInitialDir, pDestName: string; pToEmails: TStringList);
begin
  SingleEmail := True;
  DestName := pDestName;
  ToEmails := pToEmails;
  InitialDir := pInitialDir;
  edBody.Text := '�����:' + #13#10 +DestName+ #13#10+#13#10 + GetSignature;
end;

procedure TfrmOpenToSendEmail.SetData(pSrcData: string; pqrList: TEDBQuery);
begin
  SingleEmail := False;
  edBody.Text := GetSignature;
  qrList := pqrList;
  SrcData := pSrcData;
end;

function TfrmOpenToSendEmail.GetSignature: String;
begin
  dmMain.qrGnrl.SQL.Text := 'SELECT Signature, PreferedDir FROM KDefault';
  try
    dmMain.qrGnrl.Open;
    PrefferdDir := dmMain.qrGnrl.FieldByName('PreferedDir').AsString;
    Result := dmMain.qrGnrl.FieldByName('Signature').AsString;
  finally
    dmMain.qrGnrl.Close;
  end;
end;

procedure TfrmOpenToSendEmail.btnAttachClick(Sender: TObject);
var
  i: Integer;
begin
  OpenDialog.InitialDir := InitialDir;
  if OpenDialog.Execute then
    for i := 0 to OpenDialog.Files.Count-1 do
      lstAttached.Items.Add(OpenDialog.Files[i]);
end;

procedure TfrmOpenToSendEmail.btnPrefferedDirClick(Sender: TObject);
var
  i: Integer;
begin
  OpenDialog.InitialDir := PrefferdDir;
  if OpenDialog.Execute then
    for i := 0 to OpenDialog.Files.Count-1 do
      lstAttached.Items.Add(OpenDialog.Files[i]);
end;

procedure TfrmOpenToSendEmail.btnSendClick(Sender: TObject);
var
  Attachments: TStringList;
  ComposeBody: string;
  ClientId, CarId, DriverId: string;
  Subject, AttachedFiles: string;
begin
  Screen.Cursor := crHourGlass;
  Attachments := TStringList.Create;
  frmSendEMail := TfrmSendEMail.Create(Self);
  try
    Attachments.Assign(lstAttached.Items);
    if SingleEmail then
      frmSendEMail.IsMailSend(DestName, edSubject.Text, edBody.Lines.Text, ToEmails, Attachments)
    else
    begin
      try
        AttachedFiles := frmOpenToSendEMail.lstAttached.Items.Text;
        Subject := frmOpenToSendEMail.edSubject.Text;
        qrList.First;
        ToEmails := TStringList.Create;
        while not qrList.Eof do
        begin
          ToEmails.Clear;
          if HaveEmails then
          begin
            ComposeBody := '�����:' + #13#10 + qrList.FieldByName('Shem').AsString +
                #13#10+#13#10 + edBody.Lines.Text;
            if frmSendEMail.IsMailSend('', edSubject.Text, ComposeBody, ToEmails, Attachments) then
            begin
              if SrcData = 'Client' then
              begin
                ClientId := qrList.FieldByName('Id').AsString;
                CarId := 'NULL';
                DriverId := 'NULL';
              end
              else if SrcData = 'Car' then
              begin
                CarId := qrList.FieldByName('Id').AsString;
                ClientId := qrList.FieldByName('ClientId').AsString;
                DriverId := 'NULL';
              end
              else if SrcData = 'Driver' then
              begin
                DriverId := qrList.FieldByName('Id').AsString;
                ClientId := qrList.FieldByName('ClientId').AsString;
                CarId := 'NULL';
              end;

              dmMain.qrGnrl.SQL.Text := 'INSERT INTO KEMailsSend (ClientId, CarId, DriverId, ' +
                  'Subject) VALUES (' + ClientId + ', ' + CarId + ', ' + DriverId +
                  ', '+ QuotedStr(Subject) + ')';
              dmMain.qrGnrl.ExecSQL;
            end;
          end;
          qrList.Next;
        end;
      finally
        ToEmails.Free;
      end;
    end;
  finally
    Attachments.Free;
    frmSendEMail.Free;
    Screen.Cursor := crDefault;
  end;
end;

function TfrmOpenToSendEmail.HaveEMails: Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to qrList.FieldCount - 1 do
  begin
    if (Pos('mail', qrList.Fields[I].FieldName) > 0) or
        (Pos('Mail', qrList.Fields[I].FieldName) > 0) then
    begin
      if (qrList.Fields[I].AsString <> '') then
      begin
        ToEmails.Add(qrList.Fields[I].Value);
        Result := True;
      end;
    end;
  end;
end;

end.
