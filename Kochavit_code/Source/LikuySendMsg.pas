unit LikuySendMsg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlSendMsg, Data.DB, edbcomps,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin, System.DateUtils;

type
  TdlgLikuySendMsg = class(TdlgGnrlSendMsg)
    Label1: TLabel;
    edMonth: TComboBox;
    Label2: TLabel;
    edYear: TSpinEdit;
    qrGnrl1: TEDBQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    procedure SetParameters;
    function HaveEMails: Boolean;
    procedure SendMessage(pButton: String; pWorkFile: OleVariant; pList: TStringList);
  public
    { Public declarations }
  end;

var
  dlgLikuySendMsg: TdlgLikuySendMsg;

implementation
uses
  MainDM, DocUtils, DialogsHeb;
{$R *.dfm}

procedure TdlgLikuySendMsg.FormCreate(Sender: TObject);
var
  DefaultDate: TDate;
begin
  inherited;
  if (Owner.Name = 'frmeClientsList') then
    btnPreview.Enabled := False;

  DefaultDate := IncMonth(Date, -1);
  edYear.MaxValue := YearOf(Date);
  edYear.Value := YearOf(DefaultDate);
  edMonth.ItemIndex := MonthOf(DefaultDate) -1;
end;

procedure TdlgLikuySendMsg.btnPrintClick(Sender: TObject);
var
  WorkFile: OleVariant;
  List: TStringList;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  SetParameters;
  WorkFile := ExtractFilePath(Application.ExeName) + 'Docs\Wrn\Fault_Message.dot';
  List := TStringList.Create;
  List.Add('Year='+IntToStr(edYear.Value));
  List.Add('Month='+edMonth.Text);
  try
    qrGnrl.Open;
    if (Owner.Name = 'frmeClientsList') then
    begin
      dmMain.qrClientList.First;
      while not dmMain.qrClientList.Eof do
      begin
        if not dmMain.qrClientListFreze.AsBoolean and not qrGnrl.IsEmpty and
            (((Sender as TBitBtn).Name = 'btnEmail') and HaveEMails) then
          SendMessage((Sender as TBitBtn).Name, WorkFile, List);

        dmMain.qrClientList.Next;
      end;
    end
    else
    begin
      if (qrGnrl.IsEmpty) then
        MessageDlgH('אין ליקויים ללקוח זה', mtError, [mbOk], 0, 0)
      else
      begin
        SendMessage((Sender as TBitBtn).Name, WorkFile, List);
      end;
    end;
  finally
    qrGnrl.Close;
    Screen.Cursor := crDefault;
  end;
  Close;
end;

function TdlgLikuySendMsg.HaveEMails: Boolean;
begin
  Result := False;
  if (qrGnrl.FieldByName('EMail').AsString <> '') and
      (qrGnrl.FieldByName('EMailX').AsString <> '') then
    Result := True;
end;

procedure TdlgLikuySendMsg.SendMessage(pButton: String; pWorkFile: OleVariant;
  pList: TStringList);
var
  OneDoc: TDocUtils;
  ToEmails: TStringList;
  Subject: string;
begin
  Screen.Cursor := crHourGlass;
  Subject := 'מצורפת הודעה עם רשימת ליקויי הביקורת האחרונה';
  ToEmails := TStringList.Create;
  if (qrGnrl.FieldByName('EMail').AsString <> '') then
    ToEmails.Add(qrGnrl.FieldByName('EMail').AsString);
  if (qrGnrl.FieldByName('EMailX').AsString <> '') then
    ToEmails.Add(qrGnrl.FieldByName('EMailX').AsString);
  OneDoc := TDocUtils.Create(pButton, qrGnrl.FieldByName('Shem').AsString, Subject,
    1, False, ToEmails, pWorkFile);
  try
    OneDoc.SendDoc(qrGnrl, pList, 'sp');
    if (pButton = 'btnEmail') then
    begin
      qrGnrl1.SQL.Text := 'INSERT INTO KEMailsSend (ClientId, Subject) '+
          'VALUES (' + qrGnrl.FieldByName('Id').AsString + ', ' + QuotedStr('דו"ח ליקויים בביקורות האחרונות')+')';
      qrGnrl1.ExecSQL;
    end;
  finally
    OneDoc.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TdlgLikuySendMsg.SetParameters;
begin
  qrGnrl.ParamByName('pYear').AsInteger := edYear.Value;
  qrGnrl.ParamByName('pMonth').AsInteger := edMonth.ItemIndex+1;
//  qrGnrl.ParamByName('Id').AsInteger := dmMain.qrClientListId.AsInteger;
end;

end.
