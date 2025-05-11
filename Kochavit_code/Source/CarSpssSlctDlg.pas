unit CarSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, DB, Spin, StdCtrls, Buttons,
  ExtCtrls, HeiterSpssSlctDlg, edbcomps, GnrlRprtSlctDlg, frxClass, frxDBSet;

type
  TfrmCarSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbCar: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmCarSpssSlctDlg: TfrmCarSpssSlctDlg;

implementation

{$R *.dfm}
uses
   CarFilterDM;

procedure TfrmCarSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('CS');
end;

procedure TfrmCarSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmCarFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmCarFilter.qrFilter.RecordCount, '0')
    else
      PreviewReport(dmCarFilter.qrFilter.RecordCount, '0');
  finally
    qrSpss.Close;
  end;
end;

end.
