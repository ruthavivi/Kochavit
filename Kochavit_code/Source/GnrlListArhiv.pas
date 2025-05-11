unit GnrlListArhiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBActns, ActnList, ImgList, DB, Grids, DBGrids, ExtCtrls,
  StdCtrls, Mask, ComCtrls, Buttons, ToolWin, System.Actions, System.ImageList,
  ShellAPI;

type
  TfrmGnrlListArhiv = class(TForm)
    StatusBar: TStatusBar;
    ToolBar1: TToolBar;
    btnClose: TBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    edSearch: TMaskEdit;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Panel1: TPanel;
    DBGrid: TDBGrid;
    dsList: TDataSource;
    ImageList1: TImageList;
    ActionList1: TActionList;
    DataSetFirst: TDataSetFirst;
    DataSetLast: TDataSetLast;
    acReturn: TAction;
    acSiba: TAction;
    acDelete: TAction;
    pmRightClick: TPopupMenu;
    acExcelExecute: TAction;
    dlgSaveFile: TSaveDialog;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edSearchChange(Sender: TObject);
  private
    procedure SetSearchMode(Column: TColumn);
    procedure SetSaveDlgVal(pFilterIdx: Integer; pDfltExt, pIntDir: String);
  public
    typField: TClass;
    SearchVal: Variant;
    procedure LoadColOrder(pDBGrid: TDBGrid; pFile: String);
    procedure MarkIndexColumn(fldName: String);
    procedure SaveColOrder(pDBGrid: TDBGrid; pFile: String);
    function SelectFields(pModul: String; pData: TDataSet): Boolean;
    function GetExprtFile(var pFileName: String; pType: String;
        pDfltIndx: Integer): Boolean;
    procedure SaveToExcel(pQr: TDataSet; pFileName: String);
  end;

var
  frmGnrlListArhiv: TfrmGnrlListArhiv;

implementation
uses
  SlctFields, ExportToExcel, DialogsHeb, LogErrorUtil;

{$R *.dfm}

{ TfrmGnrlListArhiv }

procedure TfrmGnrlListArhiv.LoadColOrder(pDBGrid: TDBGrid; pFile: String);
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Txt\';
  if FileExists(Path + pFile) then
    pDBGrid.Columns.LoadFromFile(Path + pFile);
end;

procedure TfrmGnrlListArhiv.MarkIndexColumn(fldName: String);
var
   i: Integer;
begin
  with dbGrid do
  begin
    for i := 0 to Columns.Count -1 do
    begin
      if Columns[i].FieldName = fldName then
      begin
        Columns[i].Title.Font.Color := clRed;
        SetSearchMode(Columns[i]);
      end
      else
        Columns[i].Title.Font.Color := clBlack;
    end;
  end;
end;

function TfrmGnrlListArhiv.SelectFields(pModul: String;
  pData: TDataSet): Boolean;
begin
  Result := False;
  frmSlctFields := TfrmSlctFields.Create(Self);
  try
    frmSlctFields.LoadLists(pModul, pData);
    if (frmSlctFields.ShowModal = mrOk) then
      Result := True;
  finally
    frmSlctFields.Free;
  end;
end;

procedure TfrmGnrlListArhiv.SetSearchMode(Column: TColumn);
begin
  typField := Column.Field.ClassType;
  edSearch.Clear;
  if Column.FieldName = 'Number' then
  begin
    edSearch.BiDiMode := bdLeftToRight;
    edSearch.EditMask :=  '99999999;0; ';
  end
  else if (Column.FieldName = 'Zeut') then
  begin
    edSearch.BiDiMode := bdLeftToRight;
    edSearch.EditMask := 'a\-aaaaaaa\-a;1; ';
  end
  else
  if typField = TIntegerField then
  begin
    edSearch.BiDiMode := bdLeftToRight;
    edSearch.EditMask := '999999999999;0; ';
  end
  else
  begin
    edSearch.BiDiMode := bdRightToLeft;
    edSearch.EditMask := 'ccccccccccccccc;0; ';
  end;
end;

procedure TfrmGnrlListArhiv.edSearchChange(Sender: TObject);
begin
  SearchVal := edSearch.Text;
  if (typField = TIntegerField) then
    SearchVal := StrToIntDef(SearchVal, 0);
end;

procedure TfrmGnrlListArhiv.SaveColOrder(pDBGrid: TDBGrid; pFile: String);
var
  Path: String;
begin
  Path := ExtractFilePath(Application.ExeName) + 'Txt\';
  pDBGrid.Columns.SaveToFile(Path + pFile);
end;

procedure TfrmGnrlListArhiv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

function TfrmGnrlListArhiv.GetExprtFile(var pFileName: String; pType: String;
  pDfltIndx: Integer): Boolean;
var
  Path: String;
begin
  Result := False;
  Path := ExtractFilePath(Application.ExeName);
  SetSaveDlgVal(pDfltIndx, '*.xls', Path + pType);
  if dlgSaveFile.Execute then
  begin
    pFileName := dlgSaveFile.FileName;
    Result := True;
  end;
end;

procedure TfrmGnrlListArhiv.SetSaveDlgVal(pFilterIdx: Integer; pDfltExt,
  pIntDir: String);
begin
  dlgSaveFile.FilterIndex := pFilterIdx;
  dlgSaveFile.DefaultExt := pDfltExt;
  dlgSaveFile.InitialDir := pIntDir;
end;

procedure TfrmGnrlListArhiv.SaveToExcel(pQr: TDataSet; pFileName: String);
begin
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    try
      frmExportToExcel.Show;
      frmExportToExcel.SendToExcelFile(pQr, pFileName);
    except on E: Exception do
        HandelError('TfrmGnrlListArhiv.SaveToExcel', 'תקלה בהפקת קובץ' + #10#13 + E.Message, E);
    end;
  finally
    frmExportToExcel.Free;
  end;
  MessageDlgH('הופק קובץ אקסל בשם ומחיצה' + #10#13 + pFileName,
    mtInformation, [mbOK], 0, 0);
  ShellExecute(Application.MainForm.Handle, Nil, PChar(pFileName),
                Nil, Nil, SW_SHOW);
end;

procedure TfrmGnrlListArhiv.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
