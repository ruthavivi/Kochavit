unit BillRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, Spin, StdCtrls, Buttons, ExtCtrls, DB,
  edbcomps, frxClass, frxDBSet;

type
  TfrmBillRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbBill: TfrxDBDataset;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBillRprtSlctDlg: TfrmBillRprtSlctDlg;

implementation

{$R *.dfm}
uses
  BillFilterDM;

procedure TfrmBillRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('BL');
end;

procedure TfrmBillRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmBillRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
