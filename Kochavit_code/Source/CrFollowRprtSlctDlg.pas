unit CrFollowRprtSlctDlg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlRprtSlctDlg, edbcomps,
  Data.DB, Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmCrFollowRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    frdbFollow: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrFollowRprtSlctDlg: TfrmCrFollowRprtSlctDlg;

implementation
uses
  CrFollowFilterDM;
{$R *.dfm}

procedure TfrmCrFollowRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('F');
end;

procedure TfrmCrFollowRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintReport;
end;

procedure TfrmCrFollowRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewReport
end;

procedure TfrmCrFollowRprtSlctDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCrFollowRprtSlctDlg := nil;
end;

end.
