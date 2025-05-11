unit AcdntReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, DB, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin, StdActns, DBActns,
  System.Actions;

type
  TfrmAcdntReport = class(TfrmGnrlReport)
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure acPrintExecute(Sender: TObject);
    procedure acStatisticExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SetStatusBar;
  public
    { Public declarations }
  end;

var
  frmAcdntReport: TfrmAcdntReport;

implementation
uses
   AcdntFilterDM, AcdntRprtSlctDlg, AcdntSpssSlctDlg;
{$R *.dfm}

procedure TfrmAcdntReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('AcdntD');
  SetStatusBar;
end;

procedure TfrmAcdntReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmAcdntFilter.TotalRec) = 0) then
    Procent := '0'
  else
  Procent := FormatFloat('#.##', StrToInt(dmAcdntFilter.TotalSelectRec) /
          StrToInt(dmAcdntFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := ' סה"כ תאונות בדו"ח: ' + dmAcdntFilter.TotalSelectRec +
      ' מתוך ' + dmAcdntFilter.TotalRec + ' שהם: ' + Procent + '%';
end;

procedure TfrmAcdntReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmAcdntFilter.SqlState.Order := GetOrders(Column);
  dmAcdntFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmAcdntReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmAcdntRprtSlctDlg := TfrmAcdntRprtSlctDlg.Create(Self);
  frmAcdntRprtSlctDlg.Show;
end;

procedure TfrmAcdntReport.acStatisticExecute(Sender: TObject);
begin
  inherited;
  frmAcdntSpssSlctDlg := TfrmAcdntSpssSlctDlg.Create(Self);
  frmAcdntSpssSlctDlg.Show;
end;

procedure TfrmAcdntReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Acc', dmAcdntFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmAcdntFilter.qrFilter, FileName);
end;

procedure TfrmAcdntReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmAcdntFilter.qrFilter.Close;
  inherited;
  frmAcdntReport := nil;
end;

end.
