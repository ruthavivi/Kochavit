unit HeiterReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, DB, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin, edbcomps,
  StdActns, DBActns, System.Actions, System.ImageList;

type
  TfrmHeiterReport = class(TfrmGnrlReport)
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
  frmHeiterReport: TfrmHeiterReport;

implementation

{$R *.dfm}
uses
   HeiterFilterDM, HeiterRprtSlctDlg, HeiterSpssSlctDlg;

procedure TfrmHeiterReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('DateDone');
  SetStatusBar;
end;

procedure TfrmHeiterReport.SetStatusBar;
var
   procent: String;
begin
  Procent := FormatFloat('#.##', StrToInt(dmHeiterFilter.TotalSelectRec) /
          StrToInt(dmHeiterFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := ' ��"� ������ ���"�: ' + dmHeiterFilter.TotalSelectRec +
      ' ���� ' + dmHeiterFilter.TotalRec + ' ���: ' + Procent + '%';
end;

procedure TfrmHeiterReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmHeiterFilter.SqlState.Order := GetOrders(Column);
  dmHeiterFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmHeiterReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmHeiterRprtSlctDlg := TfrmHeiterRprtSlctDlg.Create(Self);
  frmHeiterRprtSlctDlg.Show;
end;

procedure TfrmHeiterReport.acStatisticExecute(Sender: TObject);
begin
  inherited;
  frmHeiterSpssSlctDlg := TfrmHeiterSpssSlctDlg.Create(Self);
  frmHeiterSpssSlctDlg.Show;
end;

procedure TfrmHeiterReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Ht', dmHeiterFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmHeiterFilter.qrFilter, FileName);
end;

procedure TfrmHeiterReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmHeiterFilter.qrFilter.Close;
  inherited;
  frmHeiterReport := nil;
end;

end.
