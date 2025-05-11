unit GnrlFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Mask, Spin, edbcomps,
  StrUtils;

type
  TfrmGnrlFilter = class(TForm)
    Panel1: TPanel;
    btnExecute: TBitBtn;
    btnClose: TBitBtn;
    Panel2: TPanel;
    grbMain: TGroupBox;
    cxIncludeArhiv: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure ChangeState(fldName: String; State: Boolean; cColor: TColor);
    function GetPailState: String;


    function GetVal(cmpName, clsType: String): String;
    function BetweenDates(pref, fName, aDate, zDate: String): String;
    function BetweenNumber(pref, fName, aNum, zNum: String): String;
    function BetweenString(pref, fName, aNum, zNum: String): String;
    function BetweenSpecial(aNum, zNum: String): String;
    function EqualString(pref, fName, vStr: String): String;
    function NotEqualString(pref, fName, vStr: String): String;
  public
    totalRec, selectRec: Integer;
    prfxList: TStringList;
    procedure SetCtrlState(pGrpBox: TGroupBox; pChecked: Boolean;
        pTop: Integer);
    procedure ChkBoxClick(Sender: TCheckBox);
    function GetWhereState: String;
    function CompareDate(aDate, zDate: String): Boolean;
    function GetWhereLn: String;
  end;

var
  frmGnrlFilter: TfrmGnrlFilter;

implementation
uses
  BuiltSqlWhere;
{$R *.dfm}

procedure TfrmGnrlFilter.FormCreate(Sender: TObject);
begin
  Self.Top := 0;
  Self.Left := 0;
end;

procedure TfrmGnrlFilter.FormActivate(Sender: TObject);
begin
  WindowState := wsNormal;
end;

procedure TfrmGnrlFilter.ChkBoxClick(Sender: TCheckBox);
var
   fldName: String;
begin
   fldName := Trim(Copy((Sender.Name), 4, 15));
   if Sender.Checked then
       ChangeState(fldName, True, clWhite)
   else
       ChangeState(fldName, False, clBtnFace);
end;

procedure TfrmGnrlFilter.ChangeState(fldName: String; State: Boolean;
  cColor: TColor);
var
   i: integer;
   Comp: TComponent;
begin
   for i := 0 to ComponentCount -1 do
   begin
       Comp := Components[i];

       if comp is TLabel then
       begin
           if Trim(Copy((Comp as TLabel).Name, 4, 15)) = fldName then
               (Comp as TLabel).Enabled := State;
       end
       else if (Comp is TMaskEdit) then
       begin
           if Trim(Copy((Comp as TMaskEdit).Name, 4, 15)) = fldName then
           begin
               (Comp as TMaskEdit).Enabled := State;
               (Comp as TMaskEdit).Color := cColor;
           end;
       end
       else if Comp is TEdit then
       begin
           if Trim(Copy((Comp as TEdit).Name, 4, 15)) = fldName then
           begin
               (Comp as TEdit).Enabled := State;
               (Comp as TEdit).Color := cColor;
           end;
       end
       else if Comp is TComboBox then
       begin
           if Trim(Copy((Comp as TComboBox).Name, 4, 15)) = fldName then
           begin
               (Comp as TComboBox).Enabled := State;
               (Comp as TComboBox).Color := cColor;
           end;
       end
       else if Comp is TSpinEdit then
       begin
           if Trim(Copy((Comp as TSpinEdit).Name, 4, 15)) = fldName then
           begin
               (Comp as TSpinEdit).Enabled := State;
               (Comp as TSpinEdit).Color := cColor;
           end;
       end;
   end;
end;

function TfrmGnrlFilter.CompareDate(aDate, zDate: String): Boolean;
begin
   Result := True;
   if (aDate <> '  /  /    ') and (zDate <> '  /  /    ') then
       if (StrToDate(aDate) > StrToDate(zDate)) then
       begin
           Result := False;
           MessageDlg(':תאריך מ: גדול מתאריך עד', mtError, [mbOK], 0);
       end;
end;

function TfrmGnrlFilter.GetWhereLn: String;
var
   i: Integer;
   fldName, Sug: String;
   prfx, aDate, zDate, eVal, aNum, zNum: String;
   Comp: TComponent;
   expList: TStringList;
begin
  inherited;
   expList := TStringList.Create;
   for i := 0 to ComponentCount -1 do
   begin
       Comp := Components[i];

       if (Comp is TCheckBox) and (Comp as TCheckBox).Checked then
       begin
           prfx := prfxList[Comp.Tag];
           fldName := Trim(Copy(Comp.Name, 4, 15));
           Sug := Copy(Comp.Name, 3, 1);

           if (Sug = 'D') then
           begin
               aDate := GetVal('edA'+fldName, 'M');
               zDate := GetVal('edZ'+fldName, 'M');
               if (aDate <> '  /  /    ') or (zDate <> '  /  /    ') then
                  expList.Add(BetweenDates(prfx, fldName,
                           aDate, zDate));
           end
           else if (Sug = 'N') then
           begin
               aNum := GetVal('edA'+fldName, 'M');
               zNum := GetVal('edZ'+fldName, 'M');
               expList.Add(BetweenNumber(prfx, fldName,
                           aNum, zNum));
           end
           else if (Sug = 'S') then
           begin
               aNum := GetVal('edA'+fldName, 'M');
               zNum := GetVal('edZ'+fldName, 'M');
               expList.Add(BetweenSpecial(aNum, zNum));
           end
           else if (Sug = 'A') then
           begin
               aNum := GetVal('edA'+fldName, 'A');
               zNum := GetVal('edZ'+fldName, 'A');
               expList.Add(BetweenString(prfx, fldName,
                           aNum, zNum));
           end
           else if (Sug = 'E') then
           begin
               eVal := GetVal('cbE'+fldName, 'C');
               expList.Add(EqualString(prfx, fldName, eVal));
           end
           else if (Sug = 'X') then
           begin
               eVal := GetVal('cbX'+fldName, 'C');
               expList.Add(NotEqualString(prfx, fldName, eVal));
           end
           else if (Sug = 'L') then
           begin
               eVal := GetVal('edL'+fldName, 'L');
               expList.Add(EqualString(prfx, fldName, eVal));
           end;
       end;
   end;
   for i := 0 to expList.Count -1 do
   begin
       if (i = 0) then
           Result := expList[i]
       else
           Result := Result + ' and ' + expList[i];
   end;
   expList.Free;
end;

function TfrmGnrlFilter.GetVal(cmpName, clsType: String): String;
var
   Comp: TComponent;
begin
   Result := '';
   Comp := FindComponent(cmpName);
   if (clsType = 'M') then
       Result := (Comp as TMaskEdit).Text
   else if (clsType = 'C') then
       Result := (Comp as TComboBox).Text
   else if (clsType = 'L') or (clsType = 'A') then
       Result := (Comp as TEdit).Text;
end;

function TfrmGnrlFilter.BetweenDates(pref, fName,
   aDate, zDate: String): String;
var
   faDate, fzDate: String;
begin
   Result := '';
   faDate := '';
   fzDate := '';
   if (aDate <> '  /  /    ') then
       faDate := FormatDateTime('mm/dd/yy', StrToDate(aDate));
   if (zDate <> '  /  /    ') then
       fzDate := FormatDateTime('mm/dd/yy', StrToDate(zDate));

   if (faDate <> '') and (fzDate <> '') then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(faDate) +
           ' and ' + pref+fName + ' <= ' + QuotedStr(fzDate)+' '
   else if (faDate <> '') then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(faDate)+' '
   else if (fzDate <> '') then
       Result := ' '+pref+fName + ' <= ' + QuotedStr(fzDate)+' ';
end;

function TfrmGnrlFilter.BetweenNumber(pref, fName, aNum,
  zNum: String): String;
begin
   Result := '';
   aNum := Trim(aNum);
   zNum := Trim(zNum);
   if ((aNum <> '') and (zNum <> '')) or
      ((aNum = '') and (zNum = '')) then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(aNum) +
           ' and ' + pref+fName + ' <= ' + QuotedStr(zNum)+' '
   else if (aNum <> '') then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(aNum)+' '
   else if (zNum <> '') then
       Result := ' '+pref+fName + ' <= ' + QuotedStr(zNum)+' ';
end;

function TfrmGnrlFilter.BetweenString(pref, fName, aNum,
  zNum: String): String;
begin
  Result := '';
   aNum := Trim(aNum);
   zNum := Trim(zNum);
   if ((aNum <> '') and (zNum <> '')) or
      ((aNum = '') and (zNum = '')) then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(aNum) +
           ' and ' + pref+fName + ' <= ' + QuotedStr(zNum)+' '
   else if (aNum <> '') then
       Result := ' '+pref+fName + ' >= ' + QuotedStr(aNum)+' '
   else if (zNum <> '') then
       Result := ' '+pref+fName + ' <= ' + QuotedStr(zNum)+' ';
end;

function TfrmGnrlFilter.EqualString(pref, fName, vStr: String): String;
begin
   if (vStr <> '') then
       Result := ' '+pref+fName + ' = ' + QuotedStr(vStr)+' '
   else
       Result := ' ('+ pref+fName + ' = ' + QuotedStr(vStr)+' or ' +
              pref+fName + ' Is Null) ';
end;

function TfrmGnrlFilter.NotEqualString(pref, fName, vStr: String): String;
begin
  if (vStr <> '') then
       Result := ' '+pref+fName + ' <> ' + QuotedStr(vStr)+' ';
end;

function TfrmGnrlFilter.BetweenSpecial(aNum, zNum: String): String;
begin
   Result := '';
   aNum := Trim(aNum);
   zNum := Trim(zNum);
   if (aNum <> '') and (zNum <> '') then
       Result := ' '+'(Bl.PaydD-Bl.ToPayD) >= ' + QuotedStr(aNum) +
           ' and ' + '(Bl.PaydD-Bl.ToPayD) <= ' + QuotedStr(zNum)+' '
   else if (aNum <> '') then
       Result := ' '+'(Bl.PaydD-Bl.ToPayD) >= ' + QuotedStr(aNum)+' '
   else if (zNum <> '') then
       Result := ' '+'(Bl.PaydD-Bl.ToPayD) <= ' + QuotedStr(zNum)+' ';
end;

procedure TfrmGnrlFilter.btnCloseClick(Sender: TObject);
begin
   Close;
end;


// new methods

procedure TfrmGnrlFilter.SetCtrlState(pGrpBox: TGroupBox; pChecked: Boolean;
  pTop: Integer);
var
  i: Integer;
  Ctrl: TControl;
  Color: TColor;
begin
  if pChecked then
    Color := clWhite
  else
    Color := clBtnFace;

  for i := 0 to pGrpBox.ControlCount -1 do
  begin
    Ctrl := pGrpBox.Controls[i];
    if Ctrl.Top = pTop then
    begin
      if Ctrl is TLabel then
        (Ctrl as TLabel).Enabled := pChecked
      else if Ctrl is TSpeedButton then
        (Ctrl as TSpeedButton).Enabled := pChecked
      else if Ctrl is TMaskEdit then
      begin
        (Ctrl as TMaskEdit).Enabled := pChecked;
        (Ctrl as TMaskEdit).Color := Color;
      end
      else if Ctrl is TEdit then
      begin
        (Ctrl as TEdit).Enabled := pChecked;
        (Ctrl as TEdit).Color := Color;
      end
      else if Ctrl is TComboBox then
      begin
        (Ctrl as TComboBox).Enabled := pChecked;
        (Ctrl as TComboBox).Color := Color;
      end
      else if Ctrl is TSpinEdit then
      begin
        (Ctrl as TSpinEdit).Enabled := pChecked;
        (Ctrl as TSpinEdit).Color := Color;
      end;
    end;
  end;
end;

function TfrmGnrlFilter.GetWhereState: String;
var
  Comp, CompVal: TComponent;
  FieldName: String;
  SqlWhere: TSqlWhere;
  WhereAsText, PailState: String;
begin
  Result := '';
  SqlWhere := TSqlWhere.Create;
  try
    for Comp in Self do
    begin
      if (Comp is TCheckBox) and TCheckBox(Comp).Checked then
      begin
        FieldName := Copy(TCheckBox(Comp).Name, 3, 15);
        SqlWhere.FieldName := FieldName;
        SqlWhere.Prfx := '';
        case TCheckBox(Comp).Tag  of
          1:  begin                      // between integers
                CompVal := FindComponent('edA'+FieldName);
                SqlWhere.ValAInt := TEdit(CompVal).Text;
                CompVal := FindComponent('edZ'+FieldName);
                SqlWhere.ValZInt := TEdit(CompVal).Text;
              end;
          2:  begin                      // between strings
                CompVal := FindComponent('edA'+FieldName);
                SqlWhere.ValAStr := TEdit(CompVal).Text;
                CompVal := FindComponent('edZ'+FieldName);
                SqlWhere.ValZStr := TEdit(CompVal).Text;
              end;
          3:  begin                      // between dates
                CompVal := FindComponent('edA'+FieldName);
                SqlWhere.ValADate := TEdit(CompVal).Text;
                CompVal := FindComponent('edZ'+FieldName);
                SqlWhere.ValZDate := TEdit(CompVal).Text;
              end;
          4:  begin                      // between timestamp
                CompVal := FindComponent('edA'+FieldName);
                SqlWhere.ValATimestamp := TEdit(CompVal).Text;
                CompVal := FindComponent('edZ'+FieldName);
                SqlWhere.ValZTimeStamp := TEdit(CompVal).Text;
              end;
          5:  begin                      // equal string
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValStr := TComboBox(CompVal).Text;
              end;
          6:  begin                      // equal integers
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValInt := TComboBox(CompVal).Text;
              end;
          7:  begin                      // equal booleans
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValBool := TComboBox(CompVal).Text;
              end;
          8:  begin                      // equal translate string to index
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValInt := IntToStr(TComboBox(CompVal).ItemIndex + 1);
              end;
          9:  begin                      // equal string with prefix   COMPLICATE
                SqlWhere.Prfx := TCheckBox(Comp).Hint;
                CompVal := FindComponent(LeftStr(TCheckBox(Comp).Name, 2)+'E'+ FieldName);
                SqlWhere.ValStr := TComboBox(CompVal).Text;
              end;
          10:  begin                      // include string
                CompVal := FindComponent('edE'+FieldName);
                SqlWhere.ValIncStr := TEdit(CompVal).Text;
              end;
          11: begin                      // check field is null
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValIsNull := TEdit(CompVal).Text;
              end;
          12:  begin                      // equal to first letter
                CompVal := FindComponent('cbE'+FieldName);
                SqlWhere.ValStr := LeftStr(TComboBox(CompVal).Text, 1);
               end;
        end;
      end;
    end;

    WhereAsText := SqlWhere.GetWhereAsText;
    PailState := GetPailState;

    if ((WhereAsText <> '') and (PailState <> '')) then
      Result := ' WHERE' + WhereAsText + ' and ' + PailState
    else if (WhereAsText <> '') then
      Result := ' WHERE' + WhereAsText
    else if (PailState <> '') then
       Result := ' WHERE' + PailState;
  finally
    FreeAndNil(SqlWhere);
  end;
end;

function TfrmGnrlFilter.GetPailState: String;
begin
  Result := '';
  if not cxIncludeArhiv.Checked then
    Result := ' Pail = True';
end;

procedure TfrmGnrlFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
