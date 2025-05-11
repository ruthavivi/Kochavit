unit DriverOnCarRprtSlctDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlRprtSlctDlg, edbcomps, Data.DB,
  Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TfrmDriverOnCarRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbDriverOnCarFilter: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDriverOnCarRprtSlctDlg: TfrmDriverOnCarRprtSlctDlg;

implementation
uses
  DriverOnCarFilterDM;
{$R *.dfm}

procedure TfrmDriverOnCarRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('DO');
end;

procedure TfrmDriverOnCarRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmDriverOnCarRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport;
end;

end.
