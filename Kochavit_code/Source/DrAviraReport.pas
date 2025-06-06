unit DrAviraReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlReport, DB, Menus, ImgList, ActnList, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ToolWin;

type
  TfrmDrAviraReport = class(TfrmGnrlReport)
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
  frmDrAviraReport: TfrmDrAviraReport;

implementation
uses
   DrAviraFilter, DrAviraRprtSlctDlg;//, DrAviraSpssSlctDlg;
{$R *.dfm}

procedure TfrmDrAviraReport.FormCreate(Sender: TObject);
begin
  inherited;
  MarkIndexColumn('AviraD');
  SetStatusBar;
  LoadPosition('DrAviraRpt', (Sender as TForm));
end;

procedure TfrmDrAviraReport.SetStatusBar;
var
   procent: Real;
begin
   try
       procent := frmDrAviraFilter.selectRec /
                   frmDrAviraFilter.totalRec * 100;
   except
       on EInvalidOp do procent := 0;
   end;

   StatusBar1.Panels[0].Text := '��"� ' + IntToStr(frmDrAviraFilter.selectRec) +
       ' ������ ' + IntToStr(frmDrAviraFilter.totalRec) +
       ' ��� ' + FloatToStrF(procent, ffFixed, 3, 2) + '%';
end;

procedure TfrmDrAviraReport.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  ChangeOrder(frmDrAviraFilter.qrFilter, Column);
end;

procedure TfrmDrAviraReport.acPrintExecute(Sender: TObject);
begin
  inherited;
  frmDrAviraRprtSlctDlg := TfrmDrAviraRprtSlctDlg.Create(Self);
end;

procedure TfrmDrAviraReport.acExcelExecute(Sender: TObject);
begin
  inherited;
  SaveExcel(frmDrAviraFilter.qrFilter);
end;

procedure TfrmDrAviraReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SavePosition('DrAviraRpt', (Sender as TForm));
  frmDrAviraFilter.qrFilter.Close;
  inherited;
end;

end.
