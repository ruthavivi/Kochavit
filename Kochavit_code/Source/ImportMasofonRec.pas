unit ImportMasofonRec;

interface
uses
  StrUtils, SysUtils;

type
  TImportRecord = class
    private
      FTipul: String;
      FTipulId: String;
      FNoBkr: String;
      FOved: String;
      FOvedId: String;
      FKm: String;
      FDateToDo: String;
      FDateDone: String;
      FNumber: String;
      FRemark: String;

      procedure SetDateDone(pDateDone: String);
      procedure SetDateToDo(pDateToDo: String);
      function GetKm: String;
      function GetRemark: String;
    public
      property Tipul: String read FTipul write FTipul;
      property TipulId: String read FTipulId write FTipulId;
      property NoBkr: String read FNoBkr write FNoBkr;
      property Oved: String read FOved write FOved;
      property OvedId: String read FOvedId write FOvedId;
      property Km: String read GetKm write FKm;
      property DateDone: String read FDateDone write SetDateDone;
      property DateToDo: String read FDateToDo write SetDateToDo;
      property Number: String read FNumber write FNumber;
      property Remark: String read GetRemark write FRemark;

  end;

implementation

{ TImportRecord }

function TImportRecord.GetKm: String;
begin
  Result := FKm;
  if (FKm = '') then
    Result := 'NULL';
end;

function TImportRecord.GetRemark: String;
begin
  Result := QuotedStr(FRemark);
  if (FRemark = '') then
    Result := 'NULL';
end;

procedure TImportRecord.SetDateDone(pDateDone: String);
begin
  FDateDone := FormatDateTime('yyyy-mm-dd', StrToDate(pDateDone));
end;

procedure TImportRecord.SetDateToDo(pDateToDo: String);
begin
  FDateToDo := FormatDateTime('yyyy-mm-dd', StrToDate(pDateToDo));
end;

end.
