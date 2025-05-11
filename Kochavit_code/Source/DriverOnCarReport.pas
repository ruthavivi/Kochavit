unit DriverOnCarReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlReport, Data.DB, Vcl.Menus,
  Vcl.ImgList, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDriverOnCarReport = class(TfrmGnrlReport)
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure acExcelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SetStatusBar;
  public
    { Public declarations }
  end;

var
  frmDriverOnCarReport: TfrmDriverOnCarReport;

implementation
{$R *.dfm}
uses
  DriverOnCarFilterDM, DriverOnCarRprtSlctDlg;

procedure TfrmDriverOnCarReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('ShemD');
  SetStatusBar;
end;

procedure TfrmDriverOnCarReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmDriverOnCarFilter.TotalRec) = 0) then
    Procent := '0'
  else
    Procent := FormatFloat('#.##', StrToInt(dmDriverOnCarFilter.TotalSelectRec) /
          StrToInt(dmDriverOnCarFilter.TotalRec) * 100);

  StatusBar1.Panels[0].Text := ' סה"כ טיפולים בדו"ח: ' + dmDriverOnCarFilter.TotalSelectRec +
      ' מתוך ' + dmDriverOnCarFilter.TotalRec + ' שהם: ' + Procent + '%';
end;

procedure TfrmDriverOnCarReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmDriverOnCarFilter.SqlState.Order := GetOrders(Column);
  dmDriverOnCarFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmDriverOnCarReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Tp', dmDriverOnCarFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmDriverOnCarFilter.qrFilter, FileName);
end;

procedure TfrmDriverOnCarReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmDriverOnCarRprtSlctDlg := TfrmDriverOnCarRprtSlctDlg.Create(Self);
  frmDriverOnCarRprtSlctDlg.Show;
end;

procedure TfrmDriverOnCarReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmDriverOnCarFilter.qrFilter.Close;
  inherited;
  frmDriverOnCarReport := nil;
end;

end.
