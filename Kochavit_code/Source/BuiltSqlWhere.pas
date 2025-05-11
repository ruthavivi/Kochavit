unit BuiltSqlWhere;

interface

uses
  Classes, SysUtils;

type
  TSqlWhere = class
  private
    FValInt: String;
    FValStr: String;
    FValBool: String;
    FValIncStr: String;
    FValIsNull: String;
    FValAInt, FValZInt: String;
    FValAStr, FValZStr: String;
    FValADate, FValZDate: String;
    FValATimestamp, FValZTimestamp: String;
    FPrfx: String;

    FFieldName: String;
    FSqlItems: TStringList;

    procedure SetFieldName(const Value: String);
    procedure SetValStr(const Value: String);
    procedure SetValInt(const Value: String);
    procedure SetValBool(const Value: String);
    procedure SetValAInt(const Value: String);
    procedure SetValZInt(const Value: String);
    procedure SetValAStr(const Value: String);
    procedure SetValZStr(const Value: String);
    procedure SetValADate(const Value: String);
    procedure SetValZDate(const Value: String);
    procedure SetValATimestamp(const Value: String);
    procedure SetValZTimeStamp(const Value: String);
    procedure SetValIncStr(const Value: String);
    procedure SetValIsNull(const Value: String);
    procedure SetPrfx(const Value: String);

    procedure AddEqualStrItem;
    procedure AddEqualIntItem;
    procedure AddEqualBoolItem;
    procedure AddBetweenIntItem;
    procedure AddBetweenStrItem;
    procedure AddBetweenDateItem;
    procedure AddBetweenTimestampItem;
    procedure AddIncStrItem;
    procedure AddIsNullItem;
  public
    constructor Create ; overload;
    destructor Destroy; override;

    property FieldName: String read FFieldName write SetFieldName;
    property ValStr: String read FValStr write SetValStr;
    property ValInt: String read FValInt write SetValInt;
    property ValBool: String read FValBool write SetValBool;
    property ValAInt: String read FValAInt write SetValAInt;
    property ValZInt: String read FValZInt write SetValZInt;
    property ValAStr: String read FValAStr write SetValAStr;
    property ValZStr: String read FValZStr write SetValZStr;
    property ValADate: String read FValADate write SetValADate;
    property ValZDate: String read FValZDate write SetValZDate;
    property ValATimestamp: String read FValATimestamp write SetValATimestamp;
    property ValZTimestamp: String read FValZTimestamp write SetValZTimestamp;
    property ValIncStr: String read FValIncStr write SetValIncStr;
    property ValIsNull: String read FValIsNull write SetValIsNull;
    property Prfx: String read FPrfx write SetPrfx;

    function GetWhereAsText: String;
  end;


implementation

{ TSqlWhere }

constructor TSqlWhere.Create;
begin
  FSqlItems := TStringList.Create;
end;

procedure TSqlWhere.SetFieldName(const Value: String);
begin
  FFieldName := Value;
end;

procedure TSqlWhere.SetValStr(const Value: String);
begin
  FValStr := Trim(Value);
  AddEqualStrItem;
end;

procedure TSqlWhere.SetValInt(const Value: String);
begin
  FValInt := Trim(Value);
  AddEqualIntItem;
end;

procedure TSqlWhere.SetValBool(const Value: String);
begin
  if (Value = 'כן') then
    FValBool := 'True'
  else if (Value = 'לא') then
    FValBool := 'False';
  AddEqualBoolItem;
end;

procedure TSqlWhere.SetValAInt(const Value: String);
begin
  FValAInt := Trim(Value);
end;

procedure TSqlWhere.SetValZInt(const Value: String);
begin
  FValZInt := Trim(Value);
  AddBetweenIntItem;
end;

procedure TSqlWhere.SetValAStr(const Value: String);
begin
  FValAStr := Trim(Value);
end;

procedure TSqlWhere.SetValZStr(const Value: String);
begin
  FValZStr := Trim(Value);
  AddBetweenStrItem;
end;

procedure TSqlWhere.SetValADate(const Value: String);
begin
  if (Value <> '  /  /    ') then
    FValADate := FormatDateTime('YYYY-MM-DD', StrToDate(Value));
end;

procedure TSqlWhere.SetValZDate(const Value: String);
begin
  if (Value <> '  /  /    ') then
    FValZDate := FormatDateTime('YYYY-MM-DD', StrToDate(Value));
  AddBetweenDateItem;
end;

procedure TSqlWhere.SetValATimestamp(const Value: String);
begin
  if (Value <> '  /  /       :  ') then
    FValATimestamp := FormatDateTime('YYYY-MM-DD hh:mm', StrToDateTime(Value));
end;

procedure TSqlWhere.SetValZTimeStamp(const Value: String);
begin
  if (Value <> '  /  /       :  ') then
    FValZTimestamp := FormatDateTime('YYYY-MM-DD hh:mm', StrToDateTime(Value));
  AddBetweenTimestampItem;
end;

procedure TSqlWhere.SetValIncStr(const Value: String);
begin
  if (Trim(Value) = '') then
    FValIncStr := ' IS NULL'
  else
    FValIncStr := Trim(Value);
  AddIncStrItem;
end;

procedure TSqlWhere.SetValIsNull(const Value: String);
begin
  if (Value = 'כן') then
    FValIsNull := ' IS NOT NULL'
  else
    FValIsNull := ' IS NULL';
  AddIsNullItem;
end;

procedure TSqlWhere.SetPrfx(const Value: String);
begin
  FPrfx := Value;
end;

procedure TSqlWhere.AddEqualStrItem;
begin
  FSqlItems.Add(Prfx + FFieldName + ' = ' + QuotedStr(FValStr));
end;

procedure TSqlWhere.AddEqualIntItem;
begin
  FSqlItems.Add(FFieldName + ' = ' + FValInt);
end;

procedure TSqlWhere.AddEqualBoolItem;
begin
  FSqlItems.Add(FFieldName + ' = ' + FValBool);
end;

procedure TSqlWhere.AddBetweenIntItem;
begin
  if ((FValAInt <> '') and (FValZInt <> '')) then
    FSqlItems.Add(FFieldName + ' >= ' + FValAInt + ' and ' +
                FFieldName + ' <= ' + FValZInt)
  else if (FValAInt <> '') then
    FSqlItems.Add(FFieldName + ' >= ' + FValAInt)
  else if (FValZInt <> '') then
    FSqlItems.Add(FFieldName + ' <= ' + FValZInt);
end;

procedure TSqlWhere.AddBetweenStrItem;
begin
  if ((FValAStr <> '') and (FValZStr <> '')) then
    FSqlItems.Add(FFieldName + ' >= ' + QuotedStr(FValAStr) + ' and ' +
                FFieldName + ' <= ' + QuotedStr(FValZStr))
  else if (FValAStr <> '') then
    FSqlItems.Add(FFieldName + ' >= ' + QuotedStr(FValAStr))
  else if (FValZStr <> '') then
    FSqlItems.Add(FFieldName + ' <= ' + QuotedStr(FValZStr));
end;

procedure TSqlWhere.AddBetweenDateItem;
begin
  if ((FValADate <> '') and (FValZDate <> '')) then
    FSqlItems.Add(FFieldName + ' >= DATE ' + QuotedStr(FValADate) + ' and ' +
                FFieldName + ' <= DATE ' + QuotedStr(FValZDate))
  else if (FValADate <> '') then
    FSqlItems.Add(FFieldName + ' >= DATE ' + QuotedStr(FValADate))
  else if (FValZDate <> '') then
    FSqlItems.Add(FFieldName + ' <= DATE ' + QuotedStr(FValZDate));
end;

procedure TSqlWhere.AddBetweenTimestampItem;
begin
  if ((FValATimestamp <> '') and (FValZTimestamp <> '')) then
    FSqlItems.Add(FFieldName + ' >= TIMESTAMP ' + QuotedStr(FValATimestamp) + ' and ' +
                FFieldName + ' <= TIMESTAMP ' + QuotedStr(FValZTimestamp))
  else if (FValATimestamp <> '') then
    FSqlItems.Add(FFieldName + ' >= TIMESTAMP ' + QuotedStr(FValATimestamp))
  else if (FValZTimestamp <> '') then
    FSqlItems.Add(FFieldName + ' <= TIMESTAMP ' + QuotedStr(FValZTimestamp));
end;

procedure TSqlWhere.AddIncStrItem;
begin
  if (FValIncStr = ' IS NULL') then
    FSqlItems.Add(FieldName + FValIncStr)
  else
    FSqlItems.Add(FFieldName + ' LIKE ' + QuotedStr('%'+FValIncStr+'%'));
end;

procedure TSqlWhere.AddIsNullItem;
begin
  FSqlItems.Add(FieldName + FValIsNull);
end;

function TSqlWhere.GetWhereAsText: String;
var
  Exp: String;
begin
  Result := '';
  if (FSqlItems.Count > 0) then
  begin
    for Exp in FSqlItems do
    begin
      if (Result = '') then
        Result := ' ' + Exp + ' '
      else
        Result := Result + ' and ' + Exp + ' ';
    end;
  end;
end;

destructor TSqlWhere.Destroy;
begin
  FSqlItems.Free;
  inherited;
end;

end.
