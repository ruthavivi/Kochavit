unit KbFunc;

interface

uses
   SysUtils, Forms, Math, Dialogs, Classes, Db, Variants, StrUtils,
   edbcomps, IniFiles, JPeg, Graphics;

  function ValidDate(pVal: String): Boolean; overload;
  function ValidDate(pSender: TField; pText: String): Boolean; overload;
  function ValidTime(pSender: TField; pText: String): Boolean;
  function CheckDbl(sFile, sIndex, sMsg: String;
           sValue, nId: Variant): Boolean;
  function RevStr(S: string): string;
  function GetMaxId(pTbl, pFld: String): Integer;
  function ValidTZeut(pTZeut: String): Boolean;
  function PadLeft(const S: string; pLength: Integer; pChar: Char): string;
  function PadRight(const S: string; pLength: Integer; pChar: Char): string;

  function GetIniValue(pSection, pKey, pDefault: String): String;
  procedure SetIniValue(pSection, pKey, pValue: String);
  procedure CompressJpg(pSourceFile, pDestinationFile: String);
  procedure ConvertBmpToJpg(pBmpFile, pJpgFile: String);
  function IsValidEmail(const Value: string): boolean;

implementation

function ValidDate(pVal: String): Boolean;
var
  OutVal: TDateTime;
begin
  Result := True;
  if (pVal <> '  /  /    ') and not TryStrToDate(pVal, OutVal) then
  begin
    Result := False;
    MessageDlg('תאריך אינו תקין', mtError, [mbOK], 0);
  end;
end;

function ValidDate(pSender: TField; pText: String): Boolean;
var
  OutVal: TDateTime;
begin
  Result := True;
  if (pText <> '  /  /    ') then
  begin
    if TryStrToDate(pText, OutVal) then
      pSender.AsDateTime := OutVal
    else
    begin
      Result := False;
      MessageDlg('תאריך אינו תקין', mtError, [mbOK], 0);
    end;
  end
  else
    pSender.Value := Null;
end;

function ValidTime(pSender: TField; pText: String): Boolean;
var
  OutVal: TDateTime;
begin
  Result := True;
  if (pText <> '  :  ') then
  begin
    if TryStrToTime(pText, OutVal) then
      pSender.AsDateTime := OutVal
    else
    begin
      Result := False;
      MessageDlg('שעה אינה תקינה', mtError, [mbOK], 0);
    end;
  end
  else
    pSender.Value := Null;
end;

function CheckDbl(sFile, sIndex, sMsg: String;
   sValue, nId: Variant): Boolean;
var
   tbTmp: TEDBTable;
begin
   Result := False;
   tbTmp := TEDBTable.Create(Session);
   with tbTmp do
   begin
       try
           DataBaseName := 'Kb';
           TableName := sFile;
           IndexFieldNames := sIndex;
           Open;
           if FindKey([sValue]) and
               (FieldByName('Id').AsVariant <> nId) then
           begin
               MessageDlg(sMsg, mtError, [mbOK], 0);
               Result := True;
           end;
       finally
           Close;
           tbTmp.Free;
       end;
   end;
end;

//function GetUsersList(AList: TStringList): Boolean;
//var
//   UserCur: hDBICur;
//   pUserDes: pUserDesc;
//begin
//   Result := False;
//   Check(DBIOpenUserList(UserCur));
//   GetMem(pUserDes, sizeOf(UserDesc));
//   try
//       FillChar(pUserDes^, sizeof(UserDesc), #0);
//       while (DbiGetNextRecord(UserCur, DBILockType(0), pUserDes, nil) =
//               DBIERR_NONE) do
//           Alist.Add(StrPas(pUserDes^.szUserName));
//       if Alist.Count >= 2 then
//           Result := True;
//   finally
//       FreeMem(pUserDes, sizeof(UserDesc));
//       DBICloseCursor(UserCur);
//   end;
//end;

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


function GetMaxId(pTbl, pFld: String): Integer;
var
   qrTmp: TEDBQuery;
begin
  Result := 1;
  qrTmp := TEDBQuery.Create(Session);
  with qrTmp do
  begin
    try
      SessionName := 'Main';
      DataBaseName := 'dbnMain';
      SQL.Text := 'SELECT MAX(' + pFld +') Id FROM ' + pTbl;
      Open;
      if not Eof then
        Result := FieldByName('Id').AsInteger +1;
    finally
      Close;
      Free;
    end;
  end;
end;

function GetDigit(pDigit, pKofel: Integer): Integer;
var
  Val: Integer;
begin
  Val := (pDigit * pKofel);
  if (Val > 9) then
    Result := 1 + (Val-10)
  else
    Result := Val;
end;

function GetTZeutSum(pNum, pBkr: String): Integer;
var
  i, Sum: Integer;
begin
  Sum := 0;
  for i := 1 to Length(pNum) do
  begin
    if ((i Mod 2) = 0) then
      Sum := Sum + GetDigit(StrToInt(pNum[i]), 2)
    else
      Sum := Sum + GetDigit(StrToInt(pNum[i]), 1);
  end;
  Result := Sum;
end;

function ValidTZeut(pTZeut: String): Boolean;
var
  Num, Bkr, GodBkr: String;
  Sum: Integer;
begin
  Result := False;
  Num := Copy(pTZeut, 1, 1) + Copy(pTZeut, 3, 7);
  Bkr := RightStr(pTZeut, 1);
  Sum := GetTZeutSum(Num, Bkr);
  if (IntToStr(10 - (Sum Mod 10)) = '10') then
    GodBkr := '0'
  else
    GodBkr := IntToStr(10 - (Sum Mod 10));
  if (GodBkr = Bkr) then
    Result := True
  else
    MessageDlg('מספר ת. זהות אינו תקין' + #10#13 +
    'ספרת ביקורת נכונה' + GodBkr, mtError, [mbOK], 0);
end;

function PadLeft(const S: string; pLength: Integer; pChar: Char): string;
begin
  if Length(S) < pLength then
    Result := StringOfChar(pChar, pLength - Length(S)) + S
  else
    Result := S;
end;

function PadRight(const S: string; pLength: Integer; pChar: Char): string;
begin
  if Length(S) < pLength then
    Result := S + StringOfChar(pChar, pLength - Length(S))
  else
    Result := S;
end;

function GetIniValue(pSection, pKey, pDefault: String): String;
var
  FIni: TIniFile;
begin
  FIni := TIniFile.Create(ExtractFilePath(Application.ExeName) +
                            'TextFiles\Kochavit.Ini');
  try
    Result := FIni.ReadString(pSection, pKey, pDefault);
    if (Result = '') or (Result = 'clSign') then
      Result := pDefault;
  finally
    FIni.Free;
  end;
end;

procedure SetIniValue(pSection, pKey, pValue: String);
var
  FIni: TIniFile;
begin
  FIni := TIniFile.Create(ExtractFilePath(Application.ExeName) +
                            'TextFiles\Kochavit.Ini');
  try
    FIni.WriteString(pSection, pKey, pValue);
  finally
    FIni.Free;
  end;
end;

procedure CompressJpg(pSourceFile, pDestinationFile: String);
var
  Photo: TJPegImage;
begin
  Photo := TJPegImage.Create;
  try
    Photo.LoadFromFile(pSourceFile);
    Photo.CompressionQuality := 50;
    Photo.DIBNeeded;
    Photo.Compress;
    Photo.SaveToFile(pDestinationFile);
  finally
    Photo.Free;
  end;
end;

procedure ConvertBmpToJpg(pBmpFile, pJpgFile: String);
var
  vJPEG : TJPEGImage;
  vBMP  : TBitmap;
begin
  vBMP := TBitmap.Create;
  with vBMP do
  try
    LoadFromFile(pBmpFile);
    vJPEG := TJPEGImage.Create;
    with vJPEG do
    begin
      Assign(vBMP);
      SaveToFile(pJpgFile);
      Free;
    end;
  finally
    Free;
  end;
end;

function IsValidEmail(const Value: string): boolean;
  function CheckAllowed(const s: string): boolean;
  var
    i: integer;
  begin
    Result := false;
    for i := 1 to Length(s) do
    begin
      // illegal char in s -> no valid address
      if not (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.']) then
        Exit;
    end;
    Result := true;
  end;
var
  i: integer;
  namePart, serverPart: string;
begin // of IsValidEmail
  Result := false;
  i := Pos('@', Value);
  if (i = 0) or (pos('..', Value) > 0) then
    Exit;
  namePart := Copy(Value, 1, i - 1);
  serverPart := Copy(Value, i + 1, Length(Value));
  if (Length(namePart) = 0) // @ or name missing
  or ((Length(serverPart) < 4)) {// name or server missing or } then
    Exit; // too short
  i := Pos('.', serverPart);
  // must have dot and at least 3 places from end
  if (i < 2) or (i > (Length(serverPart) - 2)) then
    Exit;
  Result := CheckAllowed(namePart) and CheckAllowed(serverPart);
end;

end.
