unit BdikaReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, DB, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin, StdActns, DBActns,
  System.Actions;

type
  TfrmBdikaReport = class(TfrmGnrlReport)
    procedure FormCreate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SetStatusBar;
  public
    { Public declarations }
  end;

var
  frmBdikaReport: TfrmBdikaReport;

implementation
uses
   BdikaFilterDM, BdikaRprtSlctDlg;
{$R *.dfm}

procedure TfrmBdikaReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('BdikaD');
  SetStatusBar;
end;

procedure TfrmBdikaReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmBdikaFilter.TotalRec) = 0) then
    Procent := '0'
  else
    Procent := FormatFloat('#.##', StrToInt(dmBdikaFilter.TotalSelectRec) /
          StrToInt(dmBdikaFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := ' סה"כ בדיקות בדו"ח: ' + dmBdikaFilter.TotalSelectRec +
      ' מתוך ' + dmBdikaFilter.TotalRec + ' שהם: ' + Procent + '%';
end;

procedure TfrmBdikaReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmBdikaFilter.SqlState.Order := GetOrders(Column);
  dmBdikaFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmBdikaReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmBdikaRprtSlctDlg := TfrmBdikaRprtSlctDlg.Create(Self);
end;

procedure TfrmBdikaReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Bd', dmBdikaFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmBdikaFilter.qrFilter, FileName);
end;

procedure TfrmBdikaReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmBdikaFilter.qrFilter.Close;
  inherited;
  frmBdikaReport := nil;
end;

end.
