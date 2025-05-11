unit HeiterSpssSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlSpssSlctDlg, edbcomps, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmHeiterSpssSlctDlg = class(TfrmGnrlSpssSlctDlg)
    frdbHeiter: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmHeiterSpssSlctDlg: TfrmHeiterSpssSlctDlg;

implementation
uses
  HeiterFilterDM;

{$R *.dfm}

procedure TfrmHeiterSpssSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('HS');
end;

procedure TfrmHeiterSpssSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  LoadSpssSql(dmHeiterFilter.qrFilter.SQL.Text);
  qrSpss.Open;
  try
    if ((Sender as TBitBtn).Name = 'btnPrint') then
      PrintReport(dmHeiterFilter.qrFilter.RecordCount, '0')
    else
      PreviewReport(dmHeiterFilter.qrFilter.RecordCount, '0');
  finally
    qrSpss.Close;
  end;
end;

end.
