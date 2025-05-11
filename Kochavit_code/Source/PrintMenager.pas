unit PrintMenager;

interface

uses
  Classes, SysUtils, Forms, Db, WordFunc, WordVer, SendMail, DBTables;


  procedure PrintSingleDoc(pPath: String; WorkFile: OleVariant;
       dSet: TDataSet; arDtlSet: array of TDataSet; arTbl: array of String;
       lstName, lstValue: TStringList);

  procedure EmailSingleDoc(pPath: String; WorkFile: OleVariant;
       dSet: TDataSet; arDtlSet: array of TDataSet; arTbl: array of String;
       lstName, lstValue: TStringList; pEMailAddr: String);


  procedure InsertRecInTable(WordObj: TWordObj; dSet: TDataSet;
       pStrt: String);
  procedure InsertLstData(WordObj: TWordObj; lstName, lstValue: TStringList);
  procedure InsertRecData(WordObj: TWordObj; dSet: TDataSet);
  procedure SendByEMail(pWorkFile, pEMailAddr: String);

implementation

var
  Ver: Integer;

procedure SetWordVer;
begin
  Ver := GetCurrentWordMajorVersion;
end;

function RevStr(S: string): string;
var
   Len, i, j, x: Integer;
   Temp, TempInt: String;
begin
   Len := Length(S);
   SetLength(Temp, Len);
   j := Len;
   i := 1;
   while i <= Len do
   begin
       if (s[j] in ['0'..'9']) then
       begin
           TempInt := '';
           while (s[j] in ['0'..'9']) or
                   (S[j] = '/') or (S[j] = '\') do
           begin
               TempInt := S[j] + TempInt;
               dec(j);
           end;
           for x := 1 to Length(TempInt) do
           begin
               Temp[i] := TempInt[x];
               Inc(i);
           end
       end
       else
       begin
           Temp[i] := S[j];
           dec(j);
           Inc(i);
       end;
   end;
   Result := temp;
end;

procedure PrintSingleDoc(pPath: String; WorkFile: OleVariant;
  dSet: TDataSet; arDtlSet: array of TDataSet; arTbl: array of String;
  lstName, lstValue: TStringList);
var
  i: Integer;
  WordObj: TWordObj;
begin
  SetWordVer;
  WordObj := TWordObj.Create;
  try
    if WordObj.ConnectWord and WordObj.OpenDocKov(pPath + WorkFile) then
    begin
      InsertLstData(WordObj, lstName, lstValue);
      InsertRecData(WordObj, dSet);
      for i := 0 to High(arDtlSet) do
        InsertRecInTable(WordObj, arDtlSet[i], arTbl[i]);
//      WordObj.EditDoc;
      WordObj.PrintDoc(1);
    end;
  finally
//    WordObj.CloseDoc;
    WordObj.Free;
  end;
end;

procedure EmailSingleDoc(pPath: String; WorkFile: OleVariant;
  dSet: TDataSet; arDtlSet: array of TDataSet; arTbl: array of String;
  lstName, lstValue: TStringList; pEMailAddr: String);
var
  i: Integer;
  WordObj: TWordObj;
  Path: String;
begin
  SetWordVer;
  WordObj := TWordObj.Create;
  try
    if WordObj.ConnectWord and WordObj.OpenDocKov(pPath + WorkFile) then
    begin
      InsertLstData(WordObj, lstName, lstValue);
      InsertRecData(WordObj, dSet);
      for i := 0 to High(arDtlSet) do
        InsertRecInTable(WordObj, arDtlSet[i], arTbl[i]);

      Path := ExtractFilePath(Application.ExeName) + 'Temp\';
      WordObj.SaveAsDoc(Path + WorkFile);
    end;
  finally
    WordObj.Free;
    SendByEMail(Path + WorkFile, pEMailAddr);
  end;
end;

procedure InsertLstData(WordObj: TWordObj; lstName, lstValue: TStringList);
var
  i: Integer;
begin
  with WordObj do
  begin
    for i := 0 to lstName.Count -1 do
    begin
      InsertBookMark(lstName[i], lstValue[i]);
    end
  end;
end;

procedure InsertRecData(WordObj: TWordObj; dSet: TDataSet);
var
  i: Integer;
  vName, vValue: String;
begin
  with WordObj, dSet do
  begin
    for i := 0 to FieldCount -1 do
    begin
      vName := Fields[i].FieldName;
      if (Ver = 9) and ((vName = 'Tel') or (vName = 'Fax')) then
        vValue := RevStr(FieldByName(vName).AsString)
      else
        vValue := FieldByName(vName).AsString;
      InsertBookMark(vName, vValue);
    end
  end;
end;

procedure InsertRecInTable(WordObj: TWordObj; dSet: TDataSet;
  pStrt: String);
var
  i: Integer;
  vName, vValue: String;
begin
  with WordObj, dSet do
  begin
    if EnterInTable(pStrt) then
    begin
      while not Eof do
      begin
        for i := 0 to FieldCount -1 do
        begin
          vName := Fields[i].FieldName;
          if (Ver = 9) and ((vName = 'TZeut') or (vName = 'Number')) then
            vValue := RevStr(FieldByName(vName).AsString)
          else
            vValue := FieldByName(vName).AsString;
          WriteInCell(vValue);
        end;
        Next;
      end;
    end;
  end;
end;

procedure SendByEMail(pWorkFile, pEMailAddr: String);
var
  sndMail: TSendMail;
  msg: TStringList;
  qrDfltValue: TQuery;
begin
  msg := TStringList.Create;
  sndMail := TSendMail.Create;
  qrDfltValue := TQuery.Create(Application);
  try
    with sndMail, qrDfltValue do
    begin
      DatabaseName := 'Kb';
      SQL.Text := 'SELECT Host, Username, UserPass, Shem FROM KDefault ';
      Open;
      fHost := FieldByName('Host').AsString;
      fUserName := FieldByName('UserName').AsString;
      fUserPass := FieldByName('UserPass').AsString;
      fFrom := FieldByName('Shem').AsString;

      fSubject := 'הודעה מהקצין בטיחות';
      msg.Add('שלום');
      msg.Add('מצורפת הודעה מהמשרד של' + fFrom);
      fMsg := msg;
      fEmailAddr := pEMailAddr;
      fAttachement := pWorkFile;
      SendFile;
    end;
  finally
    sndMail.Free;
    qrDfltValue.Close;
    qrDfltValue.Free;
    msg.Free;
  end;
end;

end.
