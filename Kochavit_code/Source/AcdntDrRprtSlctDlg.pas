unit AcdntDrRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  edbcomps, frxClass, frxDBSet;

type
  TfrmAcdntDrRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbAcdntDr: TfrxDBDataset;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcdntDrRprtSlctDlg: TfrmAcdntDrRprtSlctDlg;

implementation
uses
  AcdntDrFilterDM;
{$R *.dfm}

procedure TfrmAcdntDrRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('DN');
end;

procedure TfrmAcdntDrRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmAcdntDrRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
