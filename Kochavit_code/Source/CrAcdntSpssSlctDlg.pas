unit CrAcdntSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, DBTables, Spin, StdCtrls, Buttons, ExtCtrls,
  RpBase, RpSystem, RpDefine, RpRave, RpConDS, RpConBDE, RpCon, RpRender,
  RpRenderRTF, edbcomps, RpRenderHTML;

type
  TfrmCrAcdntSpssSlctDlg = class(TfrmGnrlRprtSlctDlg)
    ccChartsCAc: TRvCustomConnection;
    qcCrAcdntByTyp: TRvQueryConnection;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure ccChartsCAcGetCols(Connection: TRvCustomConnection);
    procedure ccChartsCAcGetRow(Connection: TRvCustomConnection);
  private
    whrLn: String;
    procedure SetChart(pLabel, pCmt: String);
  public
    { Public declarations }
  end;

var
  frmCrAcdntSpssSlctDlg: TfrmCrAcdntSpssSlctDlg;

implementation
uses
   AcdntFilterDM, GnrlSpssChart, RPTChart;
{$R *.dfm}

procedure TfrmCrAcdntSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('AS');
end;

procedure TfrmCrAcdntSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  totRec := dmAcdntFilter.qrFilter.RecordCount;
  try
   OpenSqlSpss(whrLn);
   frmChart := TfrmChart.Create(Self);
   SetChart(qrSpss.Fields[0].FieldName, 'Num');
   if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintSpss('', IntToStr(totRec))
    else
      PreviewSpss('', IntToStr(totRec));
  finally
   qrSpss.Close;
   frmChart.Free;
  end;
end;

procedure TfrmCrAcdntSpssSlctDlg.ccChartsCAcGetCols(
  Connection: TRvCustomConnection);
begin
  inherited;
  Connection.WriteField('ChartCAc', dtGraphic, 30, '', '');
end;

procedure TfrmCrAcdntSpssSlctDlg.ccChartsCAcGetRow(
  Connection: TRvCustomConnection);
begin
  inherited;
  WriteChartData(Connection, frmChart.dcChart);
end;

procedure TfrmCrAcdntSpssSlctDlg.SetChart(pLabel, pCmt: String);
begin
  frmChart.dcChart.Series[0].DataSource := qrSpss;
  frmChart.dcChart.Series[0].XLabelsSource := pLabel;
  frmChart.dcChart.Series[0].YValues.ValueSource := pCmt;
end;

end.
