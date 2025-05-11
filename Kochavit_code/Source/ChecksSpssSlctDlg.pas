unit ChecksSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, edbcomps, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmChecksSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbCheks: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmChecksSpssSlctDlg: TfrmChecksSpssSlctDlg;

implementation
uses
  ChecksFilterDM;
{$R *.dfm}


procedure TfrmChecksSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('MS');
end;

procedure TfrmChecksSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmChecksFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmChecksFilter.qrFilter.RecordCount, dmChecksFilter.GetTotalSum)
    else
      PreviewReport(dmChecksFilter.qrFilter.RecordCount, dmChecksFilter.GetTotalSum);
  finally
    qrSpss.Close;
  end;
end;
end.
