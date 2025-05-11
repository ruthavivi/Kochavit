unit AcdntSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, edbcomps, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmAcdntSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbAcdntCr: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmAcdntSpssSlctDlg: TfrmAcdntSpssSlctDlg;

implementation
uses
  AcdntFilterDM;

{$R *.dfm}

procedure TfrmAcdntSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('AS');
end;

procedure TfrmAcdntSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmAcdntFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmAcdntFilter.qrFilter.RecordCount, '0')
    else
      PreviewReport(dmAcdntFilter.qrFilter.RecordCount, '0');
  finally
    qrSpss.Close;
  end;
end;

end.
