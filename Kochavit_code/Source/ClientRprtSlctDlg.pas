unit ClientRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, Spin, StdCtrls, Buttons, ExtCtrls,
  edbcomps, frxClass, frxDBSet;

type
  TfrmClientRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbClient: TfrxDBDataset;
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientRprtSlctDlg: TfrmClientRprtSlctDlg;

implementation

{$R *.dfm}
uses
   ClientFilterDM, DataDM;

procedure TfrmClientRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('CL');
end;

procedure TfrmClientRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmClientRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
