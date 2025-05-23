unit GnrlSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, edbcomps, Spin, StdCtrls,  Buttons, ExtCtrls, StrUtils, frxClass;

type
  TfrmGnrlSpssSlctDlg = class(TForm)
    Panel2: TPanel;
    edTitle: TMemo;
    rgReports: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    btnPrint: TBitBtn;
    btnClose: TBitBtn;
    SpinEdit: TSpinEdit;
    btnPreview: TBitBtn;
    tbRprtList: TEDBTable;
    qrSpss: TEDBQuery;
    procedure FormCreate(Sender: TObject);
    procedure rgReportsClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    SqlName: string;
    TotalCmt, TotalSum: String;
    procedure SetReportParm(pQuanty: Integer; pTotalSum: String);
  public
    Path, RprtName: String;
    procedure LoadRprtItems(pUtil: String);
    procedure LoadSpssSql(pBaseSql: string);
    procedure SetTotals(pTotalCmt, pTotalSum: String);

    procedure PrintReport(pQuanty: Integer; pTotalSum: String);
    procedure PreviewReport(pQuanty: Integer; pTotalSum: String);
  end;

var
  frmGnrlSpssSlctDlg: TfrmGnrlSpssSlctDlg;

implementation
uses
  Main, DataDM, GnrlFilter;

{$R *.dfm}

{ TfrmGnrlSpssSlctDlg }
procedure TfrmGnrlSpssSlctDlg.FormCreate(Sender: TObject);
begin
  Path := ExtractFilePath(Application.ExeName)+'Report\Spss\';
end;

procedure TfrmGnrlSpssSlctDlg.LoadRprtItems(pUtil: String);
begin
  Screen.Cursor := crHourGlass;
  tbRprtList.Open;
  while not tbRprtList.Eof do
  begin
    if (tbRprtList.FieldByName('Group').AsString = pUtil) then
      rgReports.Items.Add(tbRprtList.FieldByName('RprtShem').AsString);
    tbRprtList.Next;
  end;
  tbRprtList.IndexFieldNames := 'RprtShem';
  rgReports.ItemIndex := 0;
  Screen.Cursor := crDefault;
end;

procedure TfrmGnrlSpssSlctDlg.rgReportsClick(Sender: TObject);
begin
  tbRprtList.FindKey([rgReports.Items[rgReports.ItemIndex]]);
  SqlName := tbRprtList.FieldByName('SpssFile').AsString + '.SQL';
  RprtName := tbRprtList.FieldByName('RprtName').AsString;
end;

procedure TfrmGnrlSpssSlctDlg.LoadSpssSql(pBaseSql: string);
var
  SqlText: TStringList;
  SqlToString: string;
begin
  SqlText := TStringList.Create;
  try
    SqlText.LoadFromFile(ExtractFilePath(Application.ExeName) + 'SQL\Spss\'+ SqlName);
    SqlToString := ReplaceStr(SqlText.Text, 'pBaseSql', pBaseSql);
    qrSpss.SQL.Text := SqlToString;
  finally
    SqlText.Free;
  end;
end;

procedure TfrmGnrlSpssSlctDlg.SetTotals(pTotalCmt, pTotalSum: String);
begin
  TotalCmt := pTotalCmt;
  TotalSum := pTotalSum;
end;

procedure TfrmGnrlSpssSlctDlg.PreviewReport(pQuanty: Integer; pTotalSum: String);
begin
  SetReportParm(pQuanty, pTotalSum);
  dmData.frxReport.ShowReport();
end;

procedure TfrmGnrlSpssSlctDlg.PrintReport(pQuanty: Integer; pTotalSum: String);
begin
  SetReportParm(pQuanty, pTotalSum);
  dmData.frxReport.PrepareReport(True);
  dmData.frxReport.Print();
end;

procedure TfrmGnrlSpssSlctDlg.SetReportParm(pQuanty: Integer; pTotalSum: String);
var
  fmSubHeadLine, fmFilters: TfrxMemoView;
begin
  dmData.frxReport.LoadFromFile(Path + RprtName + '.fr3');
  if (pQuanty > 0) then
    dmData.frxReport.Variables['ReportQuanty'] := pQuanty;
  if (pTotalSum <> '0') then
    dmData.frxReport.Variables['ReportSum'] := pTotalSum;
  if edTitle.Lines[0] <> '���� ����� ����� ���...' then
  begin
    fmSubHeadLine := dmData.frxReport.FindObject('mmSubHeadLine') as TfrxMemoView;
    fmSubHeadLine.Text := edTitle.Text;
  end;
end;

procedure TfrmGnrlSpssSlctDlg.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
