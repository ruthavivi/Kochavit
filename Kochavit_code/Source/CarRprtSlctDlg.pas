unit CarRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  StrUtils, edbcomps, frxClass, frxDBSet;

type
  TfrmCarRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbCarFilter: TfrxDBDataset;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmCarRprtSlctDlg: TfrmCarRprtSlctDlg;

implementation
uses
   CarFilterDM;

{$R *.dfm}

procedure TfrmCarRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('C');
end;

procedure TfrmCarRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmCarRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
