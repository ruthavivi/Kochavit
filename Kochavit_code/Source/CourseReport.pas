unit CourseReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, DB, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin, StdActns, DBActns,
  System.Actions;

type
  TfrmCourseReport = class(TfrmGnrlReport)
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure acPrintExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SetStatusBar;
  public
    { Public declarations }
  end;

var
  frmCourseReport: TfrmCourseReport;

implementation
uses
   CourseFilterDM, CourseRprtSlctDlg;
{$R *.dfm}

procedure TfrmCourseReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('StartD');
  SetStatusBar;
end;

procedure TfrmCourseReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmCourseFilter.TotalRec) = 0) then
    Procent := '0'
  else
    Procent := FormatFloat('#.##', StrToInt(dmCourseFilter.TotalSelectRec) /
          StrToInt(dmCourseFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := ' סה"כ קורסים בדו"ח: ' + dmCourseFilter.TotalSelectRec +
      ' מתוך ' + dmCourseFilter.TotalRec + ' שהם: ' + Procent + '%';
end;

procedure TfrmCourseReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmCourseFilter.SqlState.Order := GetOrders(Column);
  dmCourseFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmCourseReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmCourseRprtSlctDlg := TfrmCourseRprtSlctDlg.Create(Self);
end;

procedure TfrmCourseReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Co', dmCourseFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmCourseFilter.qrFilter, FileName);
end;

procedure TfrmCourseReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmCourseFilter.qrFilter.Close;
  inherited;
  frmCourseReport := nil;
end;

end.
