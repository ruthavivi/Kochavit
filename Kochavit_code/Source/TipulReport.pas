unit TipulReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin, DB, edbcomps,
  StdActns, DBActns, System.Actions, System.ImageList;


type
  TfrmTipulReport = class(TfrmGnrlReport)
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    edRemark: TDBMemo;
    dsDtl: TDataSource;
    N5: TMenuItem;
    acMail: TAction;
    procedure DBGridTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure acStatisticExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
  private
    procedure SetStatusBar;
  public
  end;

var
  frmTipulReport: TfrmTipulReport;

implementation
{$R *.dfm}
uses
   TipulFilterDM, TipulRprtSlctDlg, TipulSpssSlctDlg, LogErrorUtil,
   OpenToPrint, DocUtils;

procedure TfrmTipulReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('DateDone');
  SetStatusBar;
end;

procedure TfrmTipulReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmTipulFilter.TotalRec) = 0) then
    Procent := '0'
  else
    Procent := FormatFloat('#.##', StrToInt(dmTipulFilter.TotalSelectRec) /
          StrToInt(dmTipulFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := ' סה"כ טיפולים בדו"ח: ' + dmTipulFilter.TotalSelectRec +
      ' מתוך ' + dmTipulFilter.TotalRec + ' שהם: ' + Procent + '%';
end;

procedure TfrmTipulReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmTipulFilter.SqlState.Order := GetOrders(Column);
  dmTipulFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmTipulReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmTipulRprtSlctDlg := TfrmTipulRprtSlctDlg.Create(Self);
  frmTipulRprtSlctDlg.Show;
end;

procedure TfrmTipulReport.acStatisticExecute(Sender: TObject);
begin
  inherited;
  frmTipulSpssSlctDlg := TfrmTipulSpssSlctDlg.Create(Self);
  frmTipulSpssSlctDlg.Show;
end;

procedure TfrmTipulReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Tp', dmTipulFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmTipulFilter.qrFilter, FileName);
end;

procedure TfrmTipulReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmTipulFilter.qrFilter.Close;
  inherited;
  frmTipulReport := nil;
end;

end.
