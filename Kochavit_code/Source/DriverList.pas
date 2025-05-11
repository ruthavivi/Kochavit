unit DriverList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlList, Menus, ImgList, ActnList, ComCtrls, Grids, DBGrids,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolWin, Buttons, DBActns, DB,
  edbcomps, edberror, StdActns, System.Actions, System.ImageList, EnPngGr;

type
  TfrmDriverList = class(TfrmGnrlList)
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAppendExecute(Sender: TObject);
    procedure acAppendUpdate(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acFrezeExecute(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTitleClick(Column: TColumn);
    procedure acArchiveExecute(Sender: TObject);
    procedure acFrezeUpdate(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure dsListDataChange(Sender: TObject; Field: TField);
    procedure acPrintListExecute(Sender: TObject);
  private
    procedure UpdateStatusBar;
    procedure OpenOneRec(pState: Boolean);
  public
  end;

var
  frmDriverList: TfrmDriverList;

implementation

{$R *.dfm}
uses
  Main, MainDM, DriverListDM, DriverEdit, DriverEditDM, GnrlFreze, LogErrorUtil,
   DialogsHeb, Cause;

procedure TfrmDriverList.FormCreate(Sender: TObject);
begin
  inherited;
  dmDriverList := TdmDriverList.Create(Self);
  LoadColOrder(DBGrid, 'DriverList');
  MarkIndexColumn(dmDriverList.DriverOrder);
  UpdateStatusBar;
end;

procedure TfrmDriverList.dsListDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(dmDriverList) then
    UpdateStatusBar;
end;

procedure TfrmDriverList.UpdateStatusBar;
begin
  StatusBar.Panels[0].Text := 'סה"כ נהגים: ' +
            IntToStr(dmDriverList.qrDriverList.RecordCount);
  StatusBar.Panels[1].Text := 'סה"כ מוקפאים: ' + dmDriverList.DriverFrzRecNo;
end;

procedure TfrmDriverList.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dmDriverList.qrDriverListFreze.AsBoolean then
      DBGrid.Canvas.Brush.Color := clSilver;
  if dmDriverList.qrDriverListMissing.AsBoolean then
      DBGrid.Canvas.Font.Color := clRed;

  DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmDriverList.DBGridTitleClick(Column: TColumn);
begin
  dmDriverList.DriverOrder := Column.FieldName;
  dmDriverList.ReOpenTable(dmDriverList.qrDriverListId.AsInteger);
  MarkIndexColumn(Column.FieldName);
  edSearch.SetFocus;
end;

procedure TfrmDriverList.edSearchChange(Sender: TObject);
var
  SearchVal: Variant;
begin
  inherited;
  SearchVal := edSearch.Text;
  if (typField = TIntegerField) then
    SearchVal := StrToIntDef(SearchVal, 0);

  dmDriverList.qrDriverList.Locate(dmDriverList.DriverOrder, SearchVal, [loPartialKey]);
end;

procedure TfrmDriverList.acArchiveExecute(Sender: TObject);
begin
  inherited;
  frmCause := TfrmCause.Create(Self);
  frmCause.Panel3.Caption := 'שם הנהג: ' +
                       dmDriverList.qrDriverList.FieldByName('ShemD').AsString;
  frmCause.OpenRecord(frmCause.tbDrSiba);
  frmCause.tbDrSiba.FieldByName('ClientId').AsInteger :=
                    dmDriverList.qrDriverListClientId.AsInteger;
  try
    if (frmCause.ShowModal = mrYes) then
    begin
      try
        dmDriverList.ShiftToArchive;
      except
        on E: EDatabaseError do
          HandelError('TfrmeDriverList.acToArchiveExecute', 'כרטיס לא נשמר' + E.Message, E);
      end;
    end;
  finally
    frmCause.Free;
  end;
end;

procedure TfrmDriverList.acDeleteExecute(Sender: TObject);
begin
  inherited;
  if ConfirmAction('למחוק סופית את הנהג ' + dmDriverList.qrDriverListShemD.AsString) then
  begin
    Screen.Cursor := crHourGlass;
    try
      dmDriverList.DeleteDriver;
      UpdateStatusBar;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmDriverList.acFrezeUpdate(Sender: TObject);
begin
  inherited;
  if not dmDriverList.qrDriverListFreze.AsBoolean then
  begin
    acFreze.Hint := 'חופשה מעבודה';
    acFreze.ImageIndex := 5;
  end
  else
  begin
    acFreze.Hint := 'סיום חופשה';
    acFreze.ImageIndex := 6;
  end;
end;

procedure TfrmDriverList.acFrezeExecute(Sender: TObject);
begin
  inherited;
  if (acFreze.ImageIndex = 5) then
  begin
    frmGnrlFreze := TfrmGnrlFreze.Create(Self);
    if (frmGnrlFreze.ShowModal = mrOk) then
      dmMain.UpdateFrezeState(True, frmGnrlFreze.rgSlct.ItemIndex = 1,
          'KDrFreze', 'DriverId', dmDriverList.qrDriverListId.AsString,
          Engine.DateToSQLStr(frmGnrlFreze.edMoed.Date), 'KDriver');
  end
  else
    dmMain.UpdateFrezeState(False, False, '', '',
        dmDriverList.qrDriverListId.AsString, '', 'KDriver');
  dmDriverList.qrDriverList.Refresh;
end;

procedure TfrmDriverList.acPrintListExecute(Sender: TObject);
var
  Path: String;
begin
  inherited;
  Path := ExtractFilePath(Application.ExeName) + 'Report\';
  dmDriverList.PrintList(Path);
end;

procedure TfrmDriverList.acAppendUpdate(Sender: TObject);
begin
  inherited;
  acAppend.Enabled := not dmMain.SelectAll;
end;

procedure TfrmDriverList.acAppendExecute(Sender: TObject);
begin
  inherited;
  OpenOneRec(True);
end;

procedure TfrmDriverList.acEditExecute(Sender: TObject);
begin
  inherited;
  OpenOneRec(False);
end;

procedure TfrmDriverList.OpenOneRec(pState: Boolean);
begin
  if (frmMain.Role = 'Visit') then
    MessageDlgH('אין הרשאה להכנס לסעיף זה', mtError, [mbOk], 0, 0)
  else
    if not Assigned(frmDriverEdit) then
    begin
      try
        dmDriverEdit := TdmDriverEdit.Create(Self);
        dmDriverEdit.SetDataState(pState, dmDriverList.qrDriverListId.AsInteger);
        frmDriverEdit := TfrmDriverEdit.Create(Self);
      except on E: Exception do
        begin
          if (E is EEDBError) then
          begin
            if (EEDBError(E).ErrorCode = EDB_ERROR_LOCKROW) then
              MessageDlgH('כרטיס פתוח ע"י משתמש אחר', mtError, [mbOK], 0, 0)
            else
              HandelError('TfrmDriverList.OpenOneRec', '!!! קיים קובץ לא תקין' + #10#13 + E.Message, E);
          end;
        end;
      end;
    end;
end;

procedure TfrmDriverList.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  SaveColOrder(DBGrid, 'DriverList');
  for i := 0 to MdiChildCount -1 do
      if Assigned(MDIChildren[i]) then
        MdiChildren[i].Close;
  dmDriverList.Free;
  inherited;
  frmDriverList := nil;
end;

end.

