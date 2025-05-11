unit WrnList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ImgList, ActnList, Menus, ComCtrls,
  ToolWin, DB, StdCtrls, ToDoDlg, Mask, DateUtils, Buttons, ShellAPI,
  DBActns, StdActns, System.Actions, System.ImageList, DialogsHeb;

type
  TfrmWrnList = class(TForm)
    StatusBar: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    pnlCar: TPanel;
    Splitter1: TSplitter;
    pnlDrv: TPanel;
    dbgCar: TDBGrid;
    dbgDrv: TDBGrid;
    acRemark: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    acProblem: TAction;
    N7: TMenuItem;
    acPrintCar: TAction;
    acPrintDrv: TAction;
    acPrintCarByClient: TAction;
    acPrintDrvByClient: TAction;
    acPrintCarWithLikuy: TAction;
    pupPrint: TPopupMenu;
    N8: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    acPrintTofes: TAction;
    N13: TMenuItem;
    acPrintCarDtlTipul: TAction;
    N14: TMenuItem;
    acExToExcelCar: TAction;
    acExToExcelDrv: TAction;
    pupExToExcel: TPopupMenu;
    acExToExcelCar1: TMenuItem;
    acExToExcelDrv1: TMenuItem;
    SaveDialog1: TSaveDialog;
    acPrintCarByClientPg: TAction;
    N5: TMenuItem;
    N15: TMenuItem;
    acPrintDrvByClientPg: TAction;
    acMultiDone: TAction;
    pupDone: TPopupMenu;
    N18: TMenuItem;
    acPrintLabel: TAction;
    N19: TMenuItem;
    mnPrtOrPrv: TMenuItem;
    ToolBar1: TToolBar;
    btnDPrint: TToolButton;
    btnDLast: TToolButton;
    dsWrnCar: TDataSource;
    edHeiter: TComboBox;
    dsWrnDrv: TDataSource;
    edSearchDrv: TMaskEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    dtF: TDateTimePicker;
    Label1: TLabel;
    dtP: TDateTimePicker;
    Label2: TLabel;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    btnPrint: TToolButton;
    btnToExcel: TToolButton;
    btnLabel: TToolButton;
    btnProblem: TToolButton;
    edSearchCar: TMaskEdit;
    ToolBar3: TToolBar;
    edTipul: TComboBox;
    ToolButton5: TToolButton;
    edNoTipul: TComboBox;
    ToolBar4: TToolBar;
    edOved: TComboBox;
    ToolButton3: TToolButton;
    edAtar: TComboBox;
    btnClose: TBitBtn;
    btnFirst: TToolButton;
    btnLast: TToolButton;
    DataSetFirstC: TDataSetFirst;
    DataSetLastC: TDataSetLast;
    DataSetFirstD: TDataSetFirst;
    DataSetLastD: TDataSetLast;
    btnDFirst: TToolButton;
    btnDToExcel: TToolButton;
    acDone: TAction;
    btnDone: TToolButton;
    acHeiterDone: TAction;
    btnDDone: TToolButton;
    pupPrintD: TPopupMenu;
    mnPrtOrPrvD: TMenuItem;
    MenuItem2: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    WindowClose: TWindowClose;
    pmSort: TPopupMenu;
    pmPnimi: TMenuItem;
    lbScndSortCar: TListBox;
    lbScndSortDrv: TListBox;
    acExport2Lola: TAction;
    N20: TMenuItem;
    acPrintCarWhLikuyWhTipulAtr: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    acPrintCar2: TAction;
    N23: TMenuItem;
    procedure acExToExcelCarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgCarTitleClick(Column: TColumn);
    procedure dtPChange(Sender: TObject);
    procedure dbgDrvTitleClick(Column: TColumn);
    procedure acDoneExecute(Sender: TObject);
    procedure edTipulSelect(Sender: TObject);
    procedure edSearchCarChange(Sender: TObject);
    procedure acProblemUpdate(Sender: TObject);
    procedure acProblemExecute(Sender: TObject);
    procedure acPrintCarExecute(Sender: TObject);
    procedure acPrintDrvExecute(Sender: TObject);
    procedure acPrintCarByClientExecute(Sender: TObject);
    procedure acPrintDrvByClientExecute(Sender: TObject);
    procedure acPrintCarWithLikuyExecute(Sender: TObject);
    procedure dbgCarEnter(Sender: TObject);
    procedure dbgDrvEnter(Sender: TObject);
    procedure acPrintTofesExecute(Sender: TObject);
    procedure acPrintTofesUpdate(Sender: TObject);
    procedure acPrintCarDtlTipulExecute(Sender: TObject);
    procedure acPrintCarByClientPgExecute(Sender: TObject);
    procedure acPrintDrvByClientPgExecute(Sender: TObject);
    procedure acMultiDoneExecute(Sender: TObject);
    procedure acMultiDoneUpdate(Sender: TObject);
    procedure acPrintLabelExecute(Sender: TObject);
    procedure edHeiterSelect(Sender: TObject);
    procedure edOvedSelect(Sender: TObject);
    procedure dbgCarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCloseClick(Sender: TObject);
    procedure acHeiterDoneExecute(Sender: TObject);
    procedure dsWrnCarDataChange(Sender: TObject; Field: TField);
    procedure dsWrnDrvDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure dbgDrvMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgCarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbScndSortCarClick(Sender: TObject);
    procedure lbScndSortDrvClick(Sender: TObject);
    procedure acExport2LolaExecute(Sender: TObject);
    procedure acPrintCarWhLikuyWhTipulAtrExecute(Sender: TObject);
    procedure acPrintCar2Execute(Sender: TObject);
  private
    actvWin: String;
    typField: TClass;
    procedure MarkIndexColumn(dbG: TDbGrid; fldName: String);
    procedure SetSearchMode(pEdSearch: TMaskEdit; pColumn: TColumn);
    procedure AddBoxesItems;
    procedure AddBoxItems(pCombox: TComboBox; pTbl, pFirstItem, pFldName: String);
    procedure BuiltFilterListCr;
    procedure BuiltFilterListDr;

    //New procedures
    procedure SetDefaultDate;
    procedure SetParameters;
    procedure SetOrders;
    procedure SetRoleState;
    procedure UpdateStatusBarCar;
    procedure UpdateStatusBarDrv;
    procedure LoadColOrder(pDBGrid: TDBGrid; pFile: String);
    procedure SaveColOrder(pDBGrid: TDBGrid; pFile: String);
    procedure SaveOrders;
    procedure PrintReport(pSql, pRprtName: String; pQueryList: TStrings;
        pPreview: Boolean);
    function GetDesktopSize: Integer;
  public
    { Public declarations }
  end;

var
  frmWrnList: TfrmWrnList;

implementation

{$R *.dfm}
uses
   Main, MainDM, DataDM, WrnListDM, MainPrintDM, WrnTofes, PrintTofes,
   ProblemDlg, LabelWriter, LogErrorUtil, ExportToExcel, StrUtils, KbFunc,
   ExportFilesDM;

procedure TfrmWrnList.FormCreate(Sender: TObject);
var
  MaxHeight: Integer;
begin
  SetDefaultDate;
  SetParameters;
  SetOrders;
  if frmMain.Role = 'Visit' then
    SetRoleState;
  try
    dmMain.qrWrnCar.Open;
    dmMain.qrWrnDrv.Open;
  except
    on E: EDatabaseError do
    begin
      HandelError('TfrmWrnList.FormCreate', '!!! קיים קובץ לא תקין' + #10#13 + E.Message, E);
      Self.Destroy;
    end;
  end;
  LoadColOrder(dbgCar, 'WrnCarList');
  LoadColOrder(dbgDrv, 'WrnDrvList');
  pnlCar.Height := StrToInt(GetIniValue('pnlCar', 'Height',
          IntToStr(Round((pnlCar.Height + pnlDrv.Height) / 2))));
  MaxHeight := GetDesktopSize;
  if (pnlCar.Height >= MaxHeight) then
    pnlCar.Height := Round(MaxHeight/2);
  MarkIndexColumn(dbgCar, dmMain.WrnCarOrder);
  MarkIndexColumn(dbgDrv, dmMain.WrnDrvOrder);
  AddBoxesItems;
  UpdateStatusBarCar;
  UpdateStatusBarDrv;
end;

function TfrmWrnList.GetDesktopSize: Integer;
var
  r: TRect;
begin
   SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
   Result := r.Height
end;

procedure TfrmWrnList.FormActivate(Sender: TObject);
begin
  edSearchCar.SetFocus;
end;

procedure TfrmWrnList.SetDefaultDate;
begin
  dtP.DateTime := dmMain.GetTillDate;
  dtF.DateTime := StrToDate('01/01/2000');
end;

procedure TfrmWrnList.SetParameters;
begin
  dmMain.qrWrnCar.ParamByName('prmDateF').AsDate := dtF.Date;
  dmMain.qrWrnCar.ParamByName('prmDateP').AsDate := dtP.Date;
  dmMain.qrWrnDrv.ParamByName('prmDateF').AsDate := dtF.Date;
  dmMain.qrWrnDrv.ParamByName('prmDateP').AsDate := dtP.Date;
end;

procedure TfrmWrnList.SetOrders;
begin
  dmMain.WrnCarOrder := GetIniValue('WrnCar', 'Order', 'DateToDo');
  dmMain.WrnDrvOrder := GetIniValue('WrnDrv', 'Order', 'DateToDo');
end;

procedure TfrmWrnList.SetRoleState;
begin
  acPrintCar.Enabled := False;
  acPrintDrv.Enabled := False;
  acExToExcelCar.Enabled := False;
  acExToExcelDrv.Enabled := False;
end;

procedure TfrmWrnList.LoadColOrder(pDBGrid: TDBGrid; pFile: String);
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Txt\';
  if FileExists(Path + pFile) then
    pDBGrid.Columns.LoadFromFile(Path + pFile);
end;

{$REGION 'StatusBar information setting'}
procedure TfrmWrnList.dsWrnCarDataChange(Sender: TObject; Field: TField);
begin
  UpdateStatusBarCar;
end;

procedure TfrmWrnList.dsWrnDrvDataChange(Sender: TObject; Field: TField);
begin
  UpdateStatusBarDrv;
end;

procedure TfrmWrnList.UpdateStatusBarCar;
begin
  StatusBar.Panels[0].Text := 'סה"כ התראות רכבים: ' +
      IntToStr(dmMain.RecNoWrnCar);
end;

procedure TfrmWrnList.UpdateStatusBarDrv;
begin
  StatusBar.Panels[1].Text := 'סה"כ התראות נהגים: ' +
       IntToStr(dmMain.RecNoWrnDrv);
end;
{$ENDREGION}

{$REGION 'Feel combobox components with items'}
procedure TfrmWrnList.AddBoxesItems;
begin
  AddBoxItems(edTipul,   'KTblTipul', 'כל הטיפולים', 'Tipul');
  AddBoxItems(edNoTipul, 'KTblTipul', 'חוץ מטיפול', 'Tipul');
  AddBoxItems(edOved,    'KTblOved', 'כל המטפלים', 'Oved');
  AddBoxItems(edAtar,    'KTblAtar', 'כל האתרים', 'Atar');
  AddBoxItems(edHeiter,  'KTblHeiter', 'כל האישורים', 'Heiter');
end;

procedure TfrmWrnList.AddBoxItems(pCombox: TComboBox; pTbl, pFirstItem,
  pFldName: String);
begin
  with dmMain.qrGnrl do
  begin
    SQL.Text := 'SELECT ' + pFldName + ' FROM ' + pTbl +
                ' ORDER BY ' + pFldName;
    try
      pCombox.Items.Add(pFirstItem);
      Open;
      while not Eof do
      begin
        pCombox.Items.Add(FieldByName(pFldName).AsString);
        Next;
      end;
    finally
      pCombox.ItemIndex := 0;
      Close;
    end;
  end;
end;
{$ENDREGION}

procedure TfrmWrnList.dbgCarDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('Problem').AsBoolean then
    (Sender as TDBGrid).Canvas.Font.Color := clRed;
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmWrnList.dbgCarEnter(Sender: TObject);
begin
  pnlCar.Color := clRed;
  pnlDrv.Color := clBtnFace;
  actvWin := 'Car';
end;

procedure TfrmWrnList.dbgDrvEnter(Sender: TObject);
begin
  pnlDrv.Color := clRed;
  pnlCar.Color := clBtnFace;
  actvWin := 'Drv';
end;

procedure TfrmWrnList.dbgCarTitleClick(Column: TColumn);
begin
  if (Column <> Nil) then
  begin
    dmMain.WrnCarOrder := Column.FieldName;
    dmMain.ReOpenTable(dmMain.qrWrnCar, dmMain.qrWrnCarId.AsInteger);
    MarkIndexColumn(dbgCar, Column.FieldName);
    SetSearchMode(edSearchCar, Column);
    edSearchCar.SetFocus;
  end;
end;

procedure TfrmWrnList.dbgDrvTitleClick(Column: TColumn);
begin
  if (Column <> Nil) then
  begin
    dmMain.WrnDrvOrder := Column.FieldName;
    dmMain.ReOpenTable(dmMain.qrWrnDrv, dmMain.qrWrnDrvId.AsInteger);
    MarkIndexColumn(dbgDrv, Column.FieldName);
    SetSearchMode(edSearchDrv, Column);
    edSearchDrv.SetFocus;
  end;
end;

procedure TfrmWrnList.MarkIndexColumn(dbG: TDbGrid; fldName: String);
var
   i: Integer;
begin
  with dbG do
  begin
    for i := 0 to Columns.Count -1 do
    begin
      if (Columns[i].FieldName = fldName) then
      begin
        Columns[i].Title.Font.Color := clRed;
      end
      else
        Columns[i].Title.Font.Color := clBlack;
    end;
  end;
end;

procedure TfrmWrnList.SetSearchMode(pEdSearch: TMaskEdit; pColumn: TColumn);
begin
  typField := pColumn.Field.ClassType;
  if pColumn.FieldName = 'Number' then
  begin
    pEdSearch.BiDiMode := bdLeftToRight;
    pEdSearch.EditMask := '99999999;0; ';
  end
  else if (pColumn.FieldName = 'Zeut') then
  begin
    pEdSearch.BiDiMode := bdLeftToRight;
    pEdSearch.EditMask := 'a\-aaaaaaa\-a;1; ';
  end
  else if typField = TIntegerField then
  begin
    pEdSearch.BiDiMode := bdLeftToRight;
    pEdSearch.EditMask := '999999999999;0; ';
  end
  else if (typField = TDateField) then
  begin
    pEdSearch.BiDiMode := bdLeftToRight;
    pEdSearch.EditMask := '!99/99/9999;1; ';
  end
  else
  begin
    pEdSearch.BiDiMode := bdRightToLeft;
    pEdSearch.EditMask := 'ccccccccccccccc;0; ';
  end;

  pEdSearch.Clear;
  pEdSearch.SetFocus;
end;

procedure TfrmWrnList.dtPChange(Sender: TObject);
begin
  SetParameters;
  dmMain.ReOpenTable(dmMain.qrWrnCar, dmMain.qrWrnCarId.AsInteger);
  dmMain.ReOpenTable(dmMain.qrWrnDrv, dmMain.qrWrnDrvId.AsInteger);
end;

procedure TfrmWrnList.edSearchCarChange(Sender: TObject);
var
   SearchVal: Variant;
   OutVal: TDateTime;
   ValidVal: Boolean;
begin
  ValidVal := True;
  SearchVal := (Sender as TMaskEdit).Text;
  if (typField = TIntegerField) or (typField = TSmallIntField) then
    SearchVal := StrToIntDef(SearchVal, 0)
  else if (typField = TDateField) then
  begin
    if TryStrToDate(SearchVal, OutVal) then
      SearchVal := OutVal
    else
      ValidVal := False;
  end;

  if ValidVal then
  begin
  if (actvWin = 'Car') then
    dmMain.qrWrnCar.Locate(dmMain.WrnCarOrder, Trim(SearchVal), [loPartialKey])
  else
    dmMain.qrWrnDrv.Locate(dmMain.WrnDrvOrder, Trim(SearchVal), [loPartialKey]);
  end;
end;

procedure TfrmWrnList.edTipulSelect(Sender: TObject);
begin
  BuiltFilterListCr;
end;

procedure TfrmWrnList.edHeiterSelect(Sender: TObject);
begin
  BuiltFilterListDr;
end;

procedure TfrmWrnList.edOvedSelect(Sender: TObject);
begin
  BuiltFilterListCr;
  BuiltFilterListDr;
end;

procedure TfrmWrnList.BuiltFilterListCr;
var
  WhereExt: String;
begin
  if (edTipul.Text <> 'כל הטיפולים') then
    WhereExt := WhereExt + ' AND Tipul = ' + QuotedStr(edTipul.Text);
  if (edNoTipul.Text <> 'חוץ מטיפול') then
    WhereExt := WhereExt + ' AND Tipul <> ' + QuotedStr(edNoTipul.Text);
  if (edAtar.Text <> 'כל האתרים') then
    WhereExt := WhereExt + ' AND Atar = ' + QuotedStr(edAtar.Text);
  if (edOved.Text <> 'כל המטפלים') then
    WhereExt := WhereExt + ' AND Oved = ' + QuotedStr(edOved.Text);

  dmMain.whrAddCar := WhereExt;
  dmMain.ReOpenTable(dmMain.qrWrnCar, 0);
end;

procedure TfrmWrnList.BuiltFilterListDr;
var
  WhereExt: String;
begin
  if (edOved.Text <> 'כל המטפלים') then
    WhereExt := WhereExt + ' AND Oved = ' + QuotedStr(edOved.Text);
  if (edHeiter.Text <> 'כל האישורים') then
    WhereExt := WhereExt + (' AND Heiter = ' + QuotedStr(edHeiter.Text));

  dmMain.whrAddDrv := WhereExt;
  dmMain.ReOpenTable(dmMain.qrWrnDrv, 0);
end;

procedure TfrmWrnListgCarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('Problem').AsBoolean then
    (Sender as TDBGrid).Canvas.Font.Color := clRed;
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

{$REGION 'Reports printing commands'}
procedure TfrmWrnList.acPrintCarExecute(Sender: TObject);
begin
  PrintReport('WrnCarExt.SQL', 'rpWrnCar', dmMain.qrWrnCar.SQL, mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCar2Execute(Sender: TObject);
begin
  PrintReport('WrnCarExt2.SQL', 'rpWrnCar2', dmMain.qrWrnCar.SQL, mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCarByClientExecute(Sender: TObject);
begin
  PrintReport('WrnCarByClientExt.SQL', 'rpWrnCarByClient', dmMain.qrWrnCar.SQL,
      mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCarByClientPgExecute(Sender: TObject);
begin
  PrintReport('WrnCarByClientExt.SQL', 'rpWrnCarByClientPg', dmMain.qrWrnCar.SQL,
      mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCarWithLikuyExecute(Sender: TObject);
begin
  PrintReport('WrnCarExt.SQL', 'rpWrnCarWhLikuy', dmMain.qrWrnCar.SQL,
      mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCarDtlTipulExecute(Sender: TObject);
begin
  PrintReport('WrnCarExt.SQL', 'rpWrnCarWhLikuyWhTipul', dmMain.qrWrnCar.SQL,
      mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintCarWhLikuyWhTipulAtrExecute(Sender: TObject);
begin
  PrintReport('WrnCarExt.SQL', 'rpWrnCarWhLikuyWhTipulAtr', dmMain.qrWrnCar.SQL,
      mnPrtOrPrv.Checked);
end;

procedure TfrmWrnList.acPrintDrvExecute(Sender: TObject);
begin
  PrintReport('WrnDrvExt.SQL', 'rpWrnDrv', dmMain.qrWrnDrv.SQL, mnPrtOrPrvD.Checked);
end;

procedure TfrmWrnList.acPrintDrvByClientExecute(Sender: TObject);
begin
  PrintReport('WrnDrvExt.SQL', 'rpWrnDrvByClient', dmMain.qrWrnDrv.SQL,
      mnPrtOrPrvD.Checked);
end;

procedure TfrmWrnList.acPrintDrvByClientPgExecute(Sender: TObject);
begin
  PrintReport('WrnDrvExt.SQL', 'rpWrnDrvByClientPg', dmMain.qrWrnDrv.SQL,
      mnPrtOrPrvD.Checked);
end;

procedure TfrmWrnList.PrintReport(pSql, pRprtName: String; pQueryList: TStrings;
    pPreview: Boolean);
begin
  dmMainPrint := TdmMainPrint.Create(Self);
  try
    dmMainPrint.RprtPrint(pSql, pRprtName, edAtar.Text, edOved.Text,
        dtF.Date, dtP.Date, pQueryList, pPreview);
  finally
    dmMainPrint.Free;
  end;
end;
{$ENDREGION}

procedure TfrmWrnList.acProblemUpdate(Sender: TObject);
begin
   acProblem.Enabled := (dmMain.qrWrnCar.FieldByName('Problem').AsBoolean);
   if acProblem.Enabled then
      StatusBar.Panels[2].Text := 'היו ליקויים בביקורת קודמת'
   else
      StatusBar.Panels[2].Text := '';
end;

procedure TfrmWrnList.acProblemExecute(Sender: TObject);
begin
   frmProblem := TfrmProblem.Create(Self);
   frmProblem.ShowModal;
end;

procedure TfrmWrnList.acPrintLabelExecute(Sender: TObject);
var
  LabelFld: WideString;
begin
  inherited;
  LabelFld := dmMain.qrWrnCarShem.AsString + '  '+
                    dmMain.qrWrnCarNumber.AsString + #10#13 +
              'מטפל: ' + dmMain.qrWrnCarOved.AsString + #10#13 +
              ' לבצע ב: ' +  dmMain.qrWrnCarDateToDo.AsString;
  PrintLabel(LabelFld);
end;

procedure TfrmWrnList.acPrintTofesUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (edTipul.Text = 'ביקורת חודשית') or
        (edTipul.Text = 'ביקורת דו חודשית') or (edTipul.Text = 'ביקורת תלת חודשית')
        or (dmMain.qrWrnCarTipul.AsString = 'ביקורת חודשית');
end;

procedure TfrmWrnList.acPrintTofesExecute(Sender: TObject);
var
  SelectedIdList: TStringList;
  i: Integer;
  PrintTofes: TPrintTofes;
begin
  Screen.Cursor := crHourGlass;
  SelectedIdList := TStringList.Create;
  try
    if (dbgCar.SelectedRows.Count > 0) then
    begin
      for i := 0 to dbgCar.SelectedRows.Count - 1 do
      begin
        dmMain.qrWrnCar.GotoBookmark(Pointer(dbgCar.SelectedRows.Items[i]));
        SelectedIdList.Add(dmMain.qrWrnCarId.AsString);
      end;
    end;
    PrintTofes := TPrintTofes.Create;
    PrintTofes.TofesPrint(SelectedIdList);
  finally
    PrintTofes.Free;
    SelectedIdList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmWrnList.acMultiDoneUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := (edTipul.Text <> 'כל הטיפולים') and
      (edTipul.Text <> 'ביקורת חודשית') and (edTipul.Text <> 'ביקורת דו חודשית');
end;

procedure TfrmWrnList.acDoneExecute(Sender: TObject);
begin
  if (frmMain.Role = 'Visit') then
    MessageDlgH('אין הרשאה להכנס לסעיף זה', mtError, [mbOk], 0, 0)
  else
    frmToDoDlg := TfrmToDoDlg.Create(Self);
    dmWrnList := TdmWrnList.Create(Self);
    with frmToDoDlg do
    begin
      try
        lbHead.Caption := 'רכב ' + dmMain.qrWrnCarNumber.AsString;
        stxHead.Caption := stxHead.Caption + dmMain.qrWrnCarTipul.AsString;
        SetDefaults('Car', dmMain.qrWrnCarTipul.AsString);
        if ShowModal = mrOk then
          dmWrnList.UpdateTipul(Oved, Km, Rem, NoBkr, PolisaN, Problem, dtP1.Date, dtP2.Date,
              BikoretDtlId);
      finally
        frmToDoDlg.Free;
        dmWrnList.Free;
        dbgCar.SelectedRows.CurrentRowSelected := False;
        edSearchCar.SetFocus;
      end;
    end;
end;

procedure TfrmWrnList.acMultiDoneExecute(Sender: TObject);
begin
  if (frmMain.Role = 'Visit') then
    MessageDlgH('אין הרשאה להכנס לסעיף זה', mtError, [mbOk], 0, 0)
  else
    frmToDoDlg := TfrmToDoDlg.Create(Self);
    dmWrnList := TdmWrnList.Create(Self);
    with frmToDoDlg do
    begin
      try
        stxHead.Caption := stxHead.Caption + dmMain.qrWrnCarTipul.AsString;
        SetMultiDefaults('Car');
        if ShowModal = mrOk then
          dmWrnList.UpdateTipul(Oved, Rem, Problem, dtP1.Date, dtP2.Date);
      finally
        frmToDoDlg.Free;
        dmWrnList.Free;
        edSearchCar.SetFocus;
      end;
    end;
end;

procedure TfrmWrnList.acHeiterDoneExecute(Sender: TObject);
begin
  if (frmMain.Role = 'Visit') then
    MessageDlgH('אין הרשאה להכנס לסעיף זה', mtError, [mbOk], 0, 0)
  else
    frmToDoDlg := TfrmToDoDlg.Create(Self);
    dmWrnList := TdmWrnList.Create(Self);
    with frmToDoDlg do
    begin
      try
        lbHead.Caption := 'נהג ' + dmMain.qrWrnDrvShemD.AsString;
        stxHead.Caption := stxHead.Caption + dmMain.qrWrnDrvHeiter.AsString;
        SetDefaults('Drv', dmMain.qrWrnDrvHeiter.AsString);
        if ShowModal = mrOk then
          dmWrnList.UpdateHeiter(Rem, Problem, dtP1.Date, dtP2.Date);
      finally
        frmToDoDlg.Free;
        dmWrnList.Free;
        dbgDrv.SelectedRows.CurrentRowSelected := False;
        edSearchDrv.SetFocus;
      end;
    end;
end;

procedure TfrmWrnList.acExToExcelCarExecute(Sender: TObject);
begin
  if (frmMain.Role = 'Visit') then
    MessageDlgH('אין הרשאה להכנס לסעיף זה', mtError, [mbOk], 0, 0)
  else
    with SaveDialog1 do
    begin
      InitialDir := ExtractFilePath(Application.ExeName) + 'Excel\';
      DefaultExt := '*.xls';
      FilterIndex := 2;
      if Execute then
      begin
        try
          frmExportToExcel := TfrmExportToExcel.Create(Self);
          frmExportToExcel.Show;
          if ((Sender as TAction).Name = 'acExToExcelCar') then
            frmExportToExcel.SendToExcelFile(dmMain.qrWrnCar, FileName)
          else
            frmExportToExcel.SendToExcelFile(dmMain.qrWrnDrv, FileName);
        finally
          frmExportToExcel.Free;
        end;
        MessageDlg('הופק קובץ אקסל בשם ומחיצה' + #10#13 + FileName,
            mtInformation, [mbOK], 0);
        ShellExecute(Application.MainForm.Handle, Nil, PChar(FileName),
                  Nil, Nil, SW_SHOW);
      end;
    end;
end;

procedure TfrmWrnList.SaveColOrder(pDBGrid: TDBGrid; pFile: String);
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Txt\';
  pDBGrid.Columns.SaveToFile(Path + pFile);
end;

procedure TfrmWrnList.dbgCarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    lbScndSortCar.Visible := True;
end;

procedure TfrmWrnList.dbgDrvMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) then
    lbScndSortDrv.Visible := True;
end;

procedure TfrmWrnList.lbScndSortCarClick(Sender: TObject);
var
  ScndSort: String;
begin
  lbScndSortCar.Visible := False;
  if lbScndSortCar.ItemIndex = 0 then
    Exit;
  case lbScndSortCar.ItemIndex of
    1: ScndSort := 'DateToDo';
    2: ScndSort := 'Tipul';
    3: ScndSort := 'Type';
    4: ScndSort := 'Number';
    5: ScndSort := 'Contact';
    6: ScndSort := 'Shem';
    7: ScndSort := 'Atar';
  end;
  dmMain.WrnCarOrder := dmMain.WrnCarOrder + ', ' + ScndSort;
  dmMain.ReOpenTable(dmMain.qrWrnCar, dmMain.qrWrnCarId.AsInteger);
end;

procedure TfrmWrnList.lbScndSortDrvClick(Sender: TObject);
var
  ScndSort: String;
begin
  lbScndSortDrv.Visible := False;
  if lbScndSortDrv.ItemIndex = 0 then
    Exit;
  case lbScndSortDrv.ItemIndex of
    1: ScndSort := 'DateToDo';
    2: ScndSort := 'Heiter';
    3: ScndSort := 'ShemD';
    4: ScndSort := 'Shem';
    5: ScndSort := 'Oved';
  end;
  dmMain.WrnDrvOrder := dmMain.WrnDrvOrder + ', ' + ScndSort;
  dmMain.ReOpenTable(dmMain.qrWrnDrv, dmMain.qrWrnDrvId.AsInteger);
end;

procedure TfrmWrnList.SaveOrders;
begin
  if (Pos(',', dmMain.WrnCarOrder) > 0) then
    SetIniValue('WrnCar', 'Order', LeftStr(dmMain.WrnCarOrder,
                  Pos(',', dmMain.WrnCarOrder)-1))
  else if (dmMain.WrnCarOrder = '!') OR (dmMain.WrnCarOrder = '?') then
    // Do nothing
  else
    SetIniValue('WrnCar', 'Order', dmMain.WrnCarOrder);

  if (Pos(',', dmMain.WrnDrvOrder) > 0) then
    SetIniValue('WrnDrv', 'Order', LeftStr(dmMain.WrnDrvOrder,
                  Pos(',', dmMain.WrnDrvOrder)-1))
   else if (dmMain.WrnDrvOrder = '!') OR (dmMain.WrnDrvOrder = '?') then
    // Do nothing
  else
    SetIniValue('WrnDrv', 'Order', dmMain.WrnDrvOrder);
end;

procedure TfrmWrnList.acExport2LolaExecute(Sender: TObject);
begin
  dmExportFiles := TdmExportFiles.Create(Self);
  try
    dmExportFiles.Run(dtF.Date, dtP.Date);
  finally
    dmExportFiles.Free;
  end;
end;

procedure TfrmWrnList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmWrnList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveColOrder(dbgCar, 'WrnCarList');
  SaveColOrder(dbgDrv, 'WrnDrvList');
  SetIniValue('pnlCar', 'Height', IntToStr(pnlCar.Height));
  SaveOrders;
  dmMain.whrAddCar := '';  dmMain.WhrAddDrv := '';
  dmMain.qrWrnCar.Close;
  dmMain.qrWrnDrv.Close;
  Action := caFree;
  frmWrnList := nil;
end;

end.
