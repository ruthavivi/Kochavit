unit WrnMail;

interface

uses
   SysUtils, Classes, Forms, Controls, DBGrids, Dialogs, DbTables, DB,
   WrnList, OpenToPrint, WordFunc, SendMail;

   procedure Main(vPath: String);

   function AreRowSelected: Boolean;
   procedure LoadClientId(dbg: TDBGrid);
   function AreDocSelected(vPath: String): Boolean;
   procedure ScanData;
   procedure InsertClientData(tbCl: TTable);
   procedure ScanDtlData(dbg: TDBGrid; Id: String);
   procedure InsertDtlData(dSet: TDataSet; lnHead,
       fldA, fldB, fldC, src: String);
   procedure EmailDoc(fAttach, sEmail: String);

var
   ClientIDList: TStringList;
   WorkFile, nCopy: OleVariant;
   vButton, vMemo: String;
   Ver: Integer;
   WordObj: TWordObj;

implementation
uses
   KbFunc, WordVer, MainDM;

procedure Main(vPath: String);
begin
   Ver := GetCurrentWordMajorVersion;
   ClientIDList := TStringList.Create;
   try
       if AreRowSelected then
           if AreDocSelected(vPath) then
           begin
               WordObj := TWordObj.Create;
               WordObj.ConnectWord;
               ScanData;
           end;
   finally
       ClientIDList.Free;
       WordObj.Free;
   end;
end;

function AreRowSelected: Boolean;
begin
   Result := False;
   LoadClientId(frmWrnList.dbgCar);
   LoadClientId(frmWrnList.dbgDrv);
   if ClientIDList.Count > 0 then
       Result := True
   else
       MessageDlg('לא בחרת התראות', mtInformation, mbOKCancel, 0);
end;

procedure LoadClientId(dbg: TDBGrid);
var
   i, j: Integer;
begin
   with dbg, ClientIDList do
   begin
       Sorted := True;
       if SelectedRows.Count > 0 then
       begin
           with DataSource.DataSet do
           begin
               for i := 0 to SelectedRows.Count -1 do
               begin
                   GotoBookmark(pointer(SelectedRows.Items[i]));
                   if not Find(FieldByName('ID_1').AsString, j) then
                       Add(FieldByName('ID_1').AsString);
               end;
           end;
       end;
   end;
end;

function AreDocSelected(vPath: String): Boolean;
begin
   Result := False;
   frmOpenToPrint := TfrmOpenToPrint.Create(frmWrnList);
   with frmOpenToPrint do
   begin
       cbFilter.Visible := True;
       DirectoryListBox.Directory := vPath;
       Edit.Text := '';
       if ShowModal = mrOK then
       begin
           WorkFile := DirectoryListBox.Directory + '\' + Edit.Text;
           vButton := btnPress;
           nCopy := SpinEdit.Value;
           vMemo := Memo.Text;
           Result := True;
       end;
       Free;
   end
end;

procedure ScanData();
var
   j: Integer;
   sEmail, tmpDoc, vPath: String;
begin
   with frmWrnList.tbClient, ClientIDList, WordObj do
   begin
       Open;
       for j := 0 to Count -1 do
       begin
           FindKey([ClientIDList[j]]);

           OpenDoc(WorkFile);
           InsertBookMark('TillDate', DateToStr(frmWrnList.dtP.DateTime));

           InsertClientData(frmWrnList.tbClient);
           ScanDtlData(frmWrnList.dbgCar, ClientIDList[j]);
           ScanDtlData(frmWrnList.dbgDrv, ClientIDList[j]);

           if vButton = 'btnFax' then
               FaxDoc(nCopy)
           else if vButton = 'btnEmail' then
           begin
               sEmail := dmMain.tbClient.FieldByName('Email').AsString;
               tmpDoc := vPath+'Email'+ExtractFileName(WorkFile);
               SaveAsDoc(tmpDoc);
               EmailDoc(tmpDoc, sEmail);
           end
           else
               PrintDoc(nCopy);
       end;
       Close;
   end;
end;

procedure InsertClientData(tbCl: TTable);
var
   i: Integer;
begin
   with tbCl do
   begin
       for i := 0 to FieldCount -1 do
       begin
           WordObj.InsertBookMark(Fields[i].FieldName,
                       FieldByName(Fields[i].FieldName).AsString);
       end;
   end;
   WordObj.InsertBookMark('sp', '');
end;

procedure ScanDtlData(dbg: TDBGrid; Id: String);
var
   j: Integer;
begin
   with dbg, dbg.DataSource.DataSet do
   begin
       for j := 0 to SelectedRows.Count -1 do
       begin
           GotoBookmark(pointer(SelectedRows.Items[j]));
           if (FieldByName('ID_1').AsString = Id) then
           begin
               if dbg.Name = 'dbgCar' then
                  InsertDtlData(dbg.DataSource.DataSet, 'רכב ',
                               'Number', 'Tipul', 'DateToDo', 'car')
               else
                  InsertDtlData(dbg.DataSource.DataSet, 'נהג ',
                               'ShemD', 'Heiter', 'DateToDo', 'drv');
           end;
       end;
   end;
end;

procedure InsertDtlData(dSet: TDataSet; lnHead,
   fldA, fldB, fldC, src: String);
var
   nose: String;
begin
   with dSet do
   begin
       //special for Word2000 version
       if (src = 'car') and (Ver = 9) then
           nose := RevStr(FieldByName(fldA).AsString)
       else
           nose := FieldByName(fldA).AsString;

       WordObj.WriteNewLine(lnHead + nose + ' - ' +
               FieldByName(fldB).AsString +
               ' בתאריך ' + FieldByName(fldC).AsString);
   end;
end;

procedure EmailDoc(fAttach, sEmail: String);
var
  smEmail: TMAPIMail;
begin
   if (fAttach = '') or (sEmail = '') then
       MessageDlg('חסרה כתובת או מסמך מצורף', mtError, [mbOK], 0)
   else
   begin
     smEmail := TMAPIMail.Create(Application);
      try
         with smEmail do
         begin
            Body := 'הודעה מצורפת';
            Subject := 'הודעה מקצין הבטיחות';
            EditDialog := True;
            Recipients.Add(sEmail);
            Attachments.Add(fAttach);
            EditDialog := False;
            Send;
         end;
      finally
        smEmail.Free;
      end;
   end;
end;

end.
