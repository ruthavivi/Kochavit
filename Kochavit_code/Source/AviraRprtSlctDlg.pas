unit AviraRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  edbcomps, frxClass, frxDBSet;

type
  TfrmAviraRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbAvira: TfrxDBDataset;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAviraRprtSlctDlg: TfrmAviraRprtSlctDlg;

implementation
uses
   AviraFilterDM;
{$R *.dfm}

procedure TfrmAviraRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('DA');
end;

procedure TfrmAviraRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmAviraRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
