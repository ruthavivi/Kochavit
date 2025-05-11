unit SqlStates;

interface
uses
  Classes;

type
  TSqlStates = class
    private
      FSelect: String;
      FSelects: TStringList;
      FFrom: String;
      FFroms: TStringList;
      FSelectAndFrom: TStringList;
      FWhere: String;
      FWheres: TStringList;
      FOrder: String;
      FGroupBy: String;
      FStatement: String;

      procedure SetSelect(Value: String);
      procedure SetFrom(Value: String);
      procedure SetWhere(Value: String);
      procedure SetOrder(Value: String);
      procedure SetGroupBy(Value: String);

    public
      constructor Create; overload;
      destructor Destroy; override;

      procedure EmptyPropertyes;
      procedure SplitHeader;
      procedure SplitHeaders;
      procedure SetWheres(Value: String);
      procedure SetFinalStatement;

      property Select: String read FSelect write SetSelect;
      property Selects: TStringList read FSelects write FSelects;
      property From: String read FFrom write SetFrom;
      property Froms: TStringList read FFroms write FFroms;
      property SelectAndFrom: TStringList read FSelectAndFrom write FSelectAndFrom;
      property Where: String read FWhere write SetWhere;
      property Wheres: TStringList read FWheres;
      property Order: String read FOrder write SetOrder;
      property GroupBy: String read FGroupBy write SetGroupBy;
      property Statement: String read FStatement write FStatement;

  end;

implementation

{ TSqlStates }

constructor TSqlStates.Create;
begin
  inherited Create;
  FSelectAndFrom := TStringList.Create;
end;

destructor TSqlStates.Destroy;
begin
  FSelectAndFrom.Free;
  FSelects.Free;
  FFroms.Free;
  FWheres.Free;
  inherited;
end;

procedure TSqlStates.SplitHeader;
var
  I: Integer;
begin
  SetSelect(FSelectAndFrom[0]);
  for I := 1 to FSelectAndFrom.Count - 1 do
    FFrom := FFrom + ' ' + FSelectAndFrom[I];
end;

procedure TSqlStates.SplitHeaders;
var
  Line: String;
begin
  FSelects := TStringList.Create;
  FFroms := TStringList.Create;
  FWheres := TStringList.Create;

  for Line in FSelectAndFrom do
  begin
    if (Pos('SELECT', Line) > 0) then
      FSelects.Add(Line)
    else if (Pos('FROM', Line) > 0) then
      FFroms.Add(Line)
    else if (Pos('JOIN', Line) > 0) then
      FFroms[FFroms.Count-1] := FFroms[FFroms.Count-1] + ' ' + Line;
  end;
end;

procedure TSqlStates.SetSelect(Value: String);
begin
  FSelect := Value;
end;

procedure TSqlStates.SetFrom(Value: String);
begin
  FFrom := Value;
end;

procedure TSqlStates.SetWhere(Value: String);
begin
  FWhere := Value;
end;

procedure TSqlStates.SetWheres(Value: String);
begin
  FWheres.Add(Value);
end;

procedure TSqlStates.SetOrder(Value: String);
begin
  FOrder := 'ORDER BY ' + Value;
end;

procedure TSqlStates.SetGroupBy(Value: String);
begin
  FGroupBy := 'GROUP BY ' + Value;
end;

procedure TSqlStates.EmptyPropertyes;
begin
  FSelect := '';
  FFrom := '';
  FSelectAndFrom.Clear;
  FWhere := '';
  FOrder := '';
  FGroupBy := '';
  if Assigned(FSelects) then
  begin
    FSelects.Clear;
    FFroms.Clear;
    FWheres.Clear;
  end;
end;

procedure TSqlStates.SetFinalStatement;
var
  I: Integer;
  StList: TStringList;
begin
  StList := TStringList.Create;
  try
    if Assigned(FSelects) then
    begin
      for I := 0 to FSelects.Count-1 do
      begin
        StList.Add(Selects[I]);
        StList.Add(Froms[I]);
        if (FWheres.Count-1 >= I) then
          StList.Add(Wheres[I]);
        if (FSelects.Count-1 > I) then
          StList.Add('UNION ');
      end;
    end
    else
    begin
      StList.Add(Select);
      StList.Add(From);
      StList.Add(FWhere);
    end;

    StList.Add(FGroupBy);
    StList.Add(FOrder);
    FStatement := StList.Text;
  finally
    StList.Free;
  end;
end;

end.
