unit ClientTable;

interface
uses
   SysUtils, Windows, Forms, Graphics, Dialogs, DbTables, Controls,
   Main, MainDM, WordFunc, IniFiles, Registry, OpenToPrint;

  procedure CreateClient;
  function GetOpenParm: String;
  function NoOpenBill: Boolean;
  function SelectDoc(var WorkFile, nCopy: OleVariant;
      var vButton, vMemo: String; vPath: String): Boolean;
  procedure InsertData(WordObj: TWordObj; tbTbl: TTable;
      WorkFile, nCopy: OleVariant; vButton, vMemo: String);
  procedure UpdateCarDrv(Freze: String);
  procedure ReOpen(qr: TQuery);
  procedure SetOpenParm;
  procedure CloseClient;

implementation

procedure CreateClient;
var
  Order: String;
begin
   Order := GetOpenParm;
   dmMain.tbClient.IndexFieldNames := Order;
   if (Order = 'Shem') then
      frmMain.dbgClient.Columns[1].Title.Font.Color := clRed
   else
      frmMain.dbGClient.Columns[0].Title.Font.Color := clRed;
end;

function GetOpenParm: String;
var
  FFile: String;
  FIni: TIniFile;
begin
  FFile := ExtractFilePath(Application.ExeName) + 'TextFiles\Kochavit.Ini';
  FIni := TIniFile.Create(FFile);
  try
    Result := FIni.ReadString('Client', 'Order', '');
  finally
    FIni.Free;
  end;
end;

function NoOpenBill: Boolean;
var
   sSql: String;
begin
   Result := True;
   sSql := 'SELECT Id FROM "KBill.db" ' +
           'WHERE ClientId = ' +
           dmMain.tbClient.FieldByName('Id').AsString;

   with qrGnrl do
   begin
       try
           Close;
           SQL.Text := sSql;
           Open;
           if not IsEmpty then
           begin
               Result := False;
               MessageDlg('פעולה אינה אפשרית...ללקוח חשבונות פתוחים',
                           mtError, [mbOK], 0);
           end
       finally
           Close;
       end;
   end;
end;

function SelectDoc(var WorkFile, nCopy: OleVariant;
      var vButton, vMemo: String; vPath: String): Boolean;
begin
  Result := False;

   frmOpenToPrint := TfrmOpenToPrint.Create(Application);
   with frmOpenToPrint do
   begin
       cbFilter.Visible := False;
       DirectoryListBox.Directory := vPath;
       Edit.Text := '';
       if ShowModal = mrOK then
       begin
           vPath := DirectoryListBox.Directory;
           WorkFile := vPath + '\' + Edit.Text;
           vButton := btnPress;
           nCopy := SpinEdit.Value;
           vMemo := Memo.Text;
           Result := True;
       end;
       Free;
   end
end;

procedure InsertData(WordObj: TWordObj; tbTbl: TTable;
      WorkFile, nCopy: OleVariant; vButton, vMemo: String);
var
   i: integer;
begin
   with WordObj, tbTbl do
   begin
       DisableControls;
       First;
       while not EOF do
       begin
           OpenDoc(WorkFile);
           for i := 0 to FieldCount -1 do
           begin
               InsertBookMark(Fields.Fields[i].FieldName,
                           FieldByName(Fields.Fields[i].FieldName).AsString);
           end;
           if vButton = 'btnFax' then
               FaxDoc(nCopy)
           else
               PrintDoc(nCopy);

           SaveDocSend(frmMain.qrGnrl, 'KClDocSend.db',
                   dmMain.tbClient.FieldByName('Id').AsString, WorkFile);
           Next;
       end;
       EnableControls;
   end;
end;

procedure UpdateCarDrv(Freze: String);
var
   Id: String;
begin
   with frmMain.qrGnrl do
   begin
       Id := QuotedStr(dmMain.tbClient.FieldValues['Id']);
       SQL.Text := 'UPDATE "KCar.db" ' +
                   'SET Freze = ' + Freze +
                   ' WHERE ClientId = ' + Id;
       ExecSQL;
       SQL.Text := 'UPDATE "KDriver.db" ' +
                   'SET Freze = ' + Freze +
                   ' WHERE ClientId = ' + Id;
       ExecSQL;
   end;
   ReOpen(dmMain.qrCar);
   ReOpen(dmMain.qrDriver);
end;

procedure ReOpen(qr: TQuery);
begin
  with qr do
   begin
       if Active then
       begin
           DisableControls;
           Close;
           Open;
           EnableControls;
       end
   end;
end;

procedure SetOpenParm;
var
  FFile: String;
  FIni: TIniFile;
begin
  FFile := ExtractFilePath(Application.ExeName) + 'TextFiles\Kochavit.Ini';
  FIni := TIniFile.Create(FFile);
  try
    FIni.WriteString('Client', 'Order', dmMain.tbClient.IndexFieldNames);
  finally
    FIni.Free;
  end;
end;


procedure CloseClient;
begin
  SetOpenParm;
  dmMain.tbClient.Close;
end;

end.
