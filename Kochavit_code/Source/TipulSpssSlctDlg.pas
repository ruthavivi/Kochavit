unit TipulSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, edbcomps, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmTipulSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbTipul: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmTipulSpssSlctDlg: TfrmTipulSpssSlctDlg;

implementation
uses
  TipulFilterDM;

{$R *.dfm}

procedure TfrmTipulSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('TS');
end;

procedure TfrmTipulSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmTipulFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmTipulFilter.qrFilter.RecordCount, '0')
    else
      PreviewReport(dmTipulFilter.qrFilter.RecordCount, '0');
  finally
    qrSpss.Close;
  end;
end;

end.
