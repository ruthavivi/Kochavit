unit ClientSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, DB, edbcomps, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmClientSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbClients: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmClientSpssSlctDlg: TfrmClientSpssSlctDlg;

implementation
uses
  ClientFilterDM;

{$R *.dfm}
procedure TfrmClientSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('CT');
end;

procedure TfrmClientSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmClientFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmClientFilter.qrFilter.RecordCount, '0')
    else
      PreviewReport(dmClientFilter.qrFilter.RecordCount, '0');
  finally
    qrSpss.Close;
  end;
end;

end.
