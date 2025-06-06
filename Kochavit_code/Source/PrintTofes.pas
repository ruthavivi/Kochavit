unit PrintTofes;

interface

uses
  Classes, SysUtils, Forms, WordFunc, WrnList, WordVer, edbcomps, DB;

type
  TPrintTofes = class
  private
    NoBkr: Integer;
    NumberBrCode, Remark: String;
    WorkFile: OleVariant;
    Ver: Integer;
    WordObj: TWordObj;
    function  GetTofesDoc(pType: String): String;
    function  GetSetNextNo: Integer;
    procedure PrintSelected(pSelectedIdList: TStringList);
    procedure PrintAll;
    procedure OpenWordFile;
    procedure InsertMainData;
    procedure InsertSubData(pPosition: String; pQr: TEDBquery);
    procedure InsertVarData(I: Integer);
    procedure PrintWordFile;
  public
    procedure TofesPrint(pSelectedIdList: TStringList);
  end;

implementation
uses
  WrnListDM, KbFunc, LogErrorUtil;
{ TPrintTofes }

procedure TPrintTofes.TofesPrint(pSelectedIdList: TStringList);
begin
  Ver := GetCurrentWordMajorVersion;
  WordObj := TWordObj.Create;
  WordObj.ConnectWord;
  dmWrnList := TdmWrnList.Create(Application);

  with dmWrnList do
  begin
    try
      try
        qrTofesMain.Open;
        qrTofesLikuy.Open;
        qrTofesTipul.Open;
        qrTofesHeiter.Open;
        if (pSelectedIdList.Count > 0) then
          PrintSelected(pSelectedIdList)
        else
          PrintAll;
      except
        on E: EDatabaseError do
          HandelError('TPrintTofes.TofesPrint', '���� ���� �� ����!!!'+ #10#13 + E.Message, E);
      end;
    finally
      qrTofesMain.Close;
      qrTofesLikuy.Close;
      qrTofesTipul.Close;
      qrTofesHeiter.Close;
      WordObj.Free;
      Free;
    end;
  end;
end;

function TPrintTofes.GetTofesDoc(pType: String): String;
begin
  Result := 'Tofes.Dot';
  with dmWrnList do
  begin
    try
      qrGnrl.SQL.Text := 'SELECT Doc FROM KTblType ' +
                        'WHERE Type = ' + QuotedStr(pType);
      qrGnrl.Open;
      if not qrGnrl.Eof then
        Result := qrGnrl.FieldByName('Doc').AsString;
    finally
      qrGnrl.Close;
    end;
  end;
end;

function TPrintTofes.GetSetNextNo: Integer;
begin
  with dmWrnList do
  begin
    try
      qrGnrl.SQL.Text := 'SELECT NextNoBkr FROM KDefault';
      qrGnrl.Open;
      Result := qrGnrl.FieldByName('NextNoBkr').AsInteger;
      qrGnrl.Close;
      qrGnrl.SQL.Text := 'UPDATE KDefault SET NextNoBkr = ' + IntToStr(Result + 1);
      qrGnrl.ExecSQL;
    finally
      qrGnrl.Close;
    end;
  end;
end;

procedure TPrintTofes.PrintSelected(pSelectedIdList: TStringList);
var
  I: Integer;
begin
  for I := 0 to pSelectedIdList.Count - 1 do
  begin
    dmWrnList.qrTofesMain.Locate('Id', pSelectedIdList[I], []);
    OpenWordFile;
    InsertMainData;
    InsertSubData('sp', dmWrnList.qrTofesLikuy);
    InsertSubData('tp', dmWrnList.qrTofesTipul);
    InsertSubData('dh', dmWrnList.qrTofesHeiter);
    InsertVarData(I);
    PrintWordFile;
  end;
end;

procedure TPrintTofes.PrintAll;
var
  I: Integer;
begin
  while not dmWrnList.qrTofesMain.Eof do
  begin
    OpenWordFile;
    InsertMainData;
    InsertSubData('sp', dmWrnList.qrTofesLikuy);
    InsertSubData('tp', dmWrnList.qrTofesTipul);
    InsertSubData('dh', dmWrnList.qrTofesHeiter);
    Inc(I);
    InsertVarData(I);
    PrintWordFile;
    dmWrnList.qrTofesMain.Next;
  end;
end;

procedure TPrintTofes.OpenWordFile;
begin
  NoBkr := GetSetNextNo;
  WorkFile := ExtractFilePath(Application.ExeName) + 'Docs\Tofes\' +
                GetTofesDoc(dmWrnList.qrTofesMain.FieldByName('Type').AsString);
  WordObj.OpenDoc(WorkFile);
end;

procedure TPrintTofes.InsertMainData;
var
  I: Integer;
  FldName, FldValue: String;
begin
  for I := 0 to dmWrnList.qrTofesMain.FieldCount - 1 do
  begin
    FldName := dmWrnList.qrTofesMain.Fields[I].FieldName;
    FldValue :=  dmWrnList.qrTofesMain.Fields[I].AsString;

    if (Ver = 9) then
    begin
      if ((FldName = 'Number') or (FldName = 'Tel')  or (FldName = 'Tel1')
           or (FldName = 'TelC'))   then
        FldValue := RevStr(FldValue);
    end;
    if (FldName = 'Number') then
      NumberBrCode := FldValue;
    if (FldName = 'Remark') then
      Remark := FldValue
    else
      WordObj.InsertBookMark(FldName, FldValue);
      WordObj.InsertBookMark(FldName +'A', FldValue);
  end;
end;

procedure TPrintTofes.InsertSubData(pPosition: String; pQr: TEDBquery);
var
  I: Integer;
  FldValue: String;
begin
  if WordObj.ExistBookMark(pPosition) then
  begin
    WordObj.InsertBookMark(pPosition, '');
    while not pQr.Eof do
    begin
      FldValue := '';
      if (pPosition = 'tp') or (pPosition = 'dh') then
        if (pQr.FieldByName('DateToDo').AsDateTime <= (Date+30)) then
          FldValue := '!  ';
      for I := 0 to pQr.FieldCount - 1 do
        FldValue := FldValue + pQr.Fields[i].AsString + ' ';

      WordObj.WriteNewLine(FldValue);
      pQr.Next;
    end;
  end;
  if (pPosition = 'sp') and (Remark <> '') then
    WordObj.WriteNewLine(Remark);
end;

procedure TPrintTofes.InsertVarData(I: Integer);
begin
  WordObj.InsertBookMark('NoBkr', IntToStr(NoBkr));
  WordObj.InsertBookMark('NoBkrB', IntToStr(NoBkr));
  WordObj.InsertBookMark('NoBkrC', IntToStr(NoBkr));
  WordObj.InsertBookMark('NumberBrCode', NumberBrCode);
  WordObj.InsertBookMark('pI', IntToStr(I));
end;

procedure TPrintTofes.PrintWordFile;
begin
//  WordObj.EditDoc;
  WordObj.PrintDoc('1');
  WordObj.CloseWord;
end;

end.
