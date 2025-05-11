unit CrFollowReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlReport, Data.DB, Vcl.Menus,
  Vcl.ImgList, Vcl.StdActns, Vcl.DBActns, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, System.Actions;

type
  TfrmCrFollowReport = class(TfrmGnrlReport)
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure acExcelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
  private
    procedure SetStatusBar;
  public
    { Public declarations }
  end;

var
  frmCrFollowReport: TfrmCrFollowReport;

implementation
uses
  CrFollowFilterDM, CrFollowRprtSlctDlg;
{$R *.dfm}

procedure TfrmCrFollowReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('Moed');
  SetStatusBar;
end;

procedure TfrmCrFollowReport.SetStatusBar;
var
  Procent: String;
begin
  if (StrToInt(dmCrFollowFilter.TotalRec) = 0) then
    Procent := '0'
  else
    Procent := FormatFloat('#.##', StrToInt(dmCrFollowFilter.TotalSelectRec) /
          StrToInt(dmCrFollowFilter.TotalRec) * 100);
  StatusBar1.Panels[0].Text := '��"� ������ ���"�: ' + dmCrFollowFilter.TotalSelectRec +
      ' ���� ' + dmCrFollowFilter.TotalRec + ' ���: ' + Procent + '%';
end;

procedure TfrmCrFollowReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmCrFollowRprtSlctDlg := TfrmCrFollowRprtSlctDlg.Create(Self);
  frmCrFollowRprtSlctDlg.Show;
end;

procedure TfrmCrFollowReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  dmCrFollowFilter.SqlState.Order := GetOrders(Column);
  dmCrFollowFilter.ReOpen;
  MarkIndexColumn(Column.FieldName);
end;

procedure TfrmCrFollowReport.acExcelExecute(Sender: TObject);
var
  FileName: String;
begin
  inherited;
  if SelectFields('Flc', dmCrFollowFilter.qrFilter) then
    if GetExprtFile(FileName, 'Excel', 2) then
      SaveToExcel(dmCrFollowFilter.qrFilter, FileName);
end;

procedure TfrmCrFollowReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmCrFollowFilter.qrFilter.Close;
  inherited;
  frmCrFollowReport := nil;
end;

end.
