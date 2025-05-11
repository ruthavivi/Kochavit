unit StatusDrvs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlSendMsg, Data.DB, edbcomps,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, DateUtils;

type
  TdlgStatusDrvs = class(TdlgGnrlSendMsg)
    dsClient: TDataSource;
    qrGnrl1: TEDBQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
  private
    All: Boolean;
    ToEmails: TStringList;
    function HaveEMails(ClientId: string): Boolean;
  public
    { Public declarations }
  end;

var
  dlgStatusDrvs: TdlgStatusDrvs;

implementation
uses
   MainDM, ClientEditDM, ClientEdit, ExcelRprtDrvsDM;
{$R *.dfm}

procedure TdlgStatusDrvs.FormCreate(Sender: TObject);
begin
  inherited;
  All := True;
  if (Owner = frmClientEdit) then
    All := False;
end;

procedure TdlgStatusDrvs.btnEmailClick(Sender: TObject);
begin
  inherited;
  if All then
  begin
    dmMain.qrClientList.First;
    dmExcelRprtDrvs := TdmExcelRprtDrvs.Create(Self);
    try
      while not dmMain.qrClientList.Eof do
      begin
        if HaveEMails(dmMain.qrClientListId.AsString) then
        begin
          try
             dmExcelRprtDrvs.CreateRprt(dmMain.qrClientListId.AsInteger,
                dmMain.qrClientListCod.AsInteger, dmMain.qrClientListShem.AsString,
                'EMail', ToEmails);

             qrGnrl.SQL.Text := 'INSERT INTO KEMailsSend (ClientId, Subject) '+
                'VALUES (' + dmMain.qrClientListId.AsString + ', ' + QuotedStr('מצבת נהגים')+')';
             qrGnrl.ExecSQL;
          finally
            ToEmails.Free;
          end;
        end;
        dmMain.qrClientList.Next;
      end;
    finally
      dmExcelRprtDrvs.Free;
    end;
  end
  else
  begin
    if HaveEMails(dmClientEdit.tbClientId.AsString) then
    begin
      try
        dmExcelRprtDrvs := TdmExcelRprtDrvs.Create(Self);
        dmExcelRprtDrvs.CreateRprt(dmClientEdit.tbClientId.AsInteger,
          dmClientEdit.tbClientCod.AsInteger, dmClientEdit.tbClientShem.AsString,
            'EMail', ToEmails);

        qrGnrl.SQL.Text := 'INSERT INTO KEMailsSend (ClientId, Subject) '+
          'VALUES (' + dmClientEdit.tbClientId.AsString + ', ' + QuotedStr('מצבת נהגים')+')';
        qrGnrl.ExecSQL;
      finally
        ToEmails.Free;
        dmExcelRprtDrvs.Free;
      end;
    end;
  end;
end;

procedure TdlgStatusDrvs.btnPreviewClick(Sender: TObject);
begin
  inherited;
  dmExcelRprtDrvs := TdmExcelRprtDrvs.Create(Self);
  dmExcelRprtDrvs.CreateRprt(dmClientEdit.tbClientId.AsInteger,
      dmClientEdit.tbClientCod.AsInteger, dmClientEdit.tbClientShem.AsString,
        'Preview', nil);
end;

function TdlgStatusDrvs.HaveEMails(ClientId: string): Boolean;
begin
  Result := False;
  qrGnrl.SQL.Text := 'SELECT EMail, EMailX FROM KClient ' +
      'WHERE Id = '+ClientId;
  try
    qrGnrl.Open;
    if (qrGnrl.FieldByName('EMail').AsString <> '') or
      (qrGnrl.FieldByName('EMailX').AsString <> '') then
    begin
      Result := True;
      ToEmails := TStringList.Create;
      if (qrGnrl.FieldByName('EMail').AsString <> '') then
        ToEmails.Add(qrGnrl.FieldByName('EMail').AsString);
      if (qrGnrl.FieldByName('EMailX').AsString <> '') then
        ToEmails.Add(qrGnrl.FieldByName('EMailX').AsString);
    end;
  finally
    qrGnrl.Close;
  end;
end;

end.
