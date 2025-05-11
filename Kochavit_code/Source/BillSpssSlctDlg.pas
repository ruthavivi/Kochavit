unit BillSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, edbcomps, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmBillSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbBills: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmBillSpssSlctDlg: TfrmBillSpssSlctDlg;

implementation
uses
   BillFilterDM;

{$R *.dfm}

procedure TfrmBillSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('BS');
end;

procedure TfrmBillSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmBillFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmBillFilter.qrFilter.RecordCount, dmBillFilter.GetTotalSum)
    else
      PreviewReport(dmBillFilter.qrFilter.RecordCount, dmBillFilter.GetTotalSum);
  finally
    qrSpss.Close;
  end;
end;

end.
