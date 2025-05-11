unit DrAviraRprtSlctDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlRprtSlctDlg, DB, DBTables, Spin, StdCtrls, Buttons, ExtCtrls,
  RpCon, RpConDS, RpConBDE, RpBase, RpSystem, RpDefine, RpRave, RpRender,
  RpRenderRTF;

type
  TfrmDrAviraRprtSlctDlg = class(TfrmGnrlRprtSlctDlg)
    rqDrAvira: TRvQueryConnection;
    procedure btnRTFClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDrAviraRprtSlctDlg: TfrmDrAviraRprtSlctDlg;

implementation
uses
   DrAviraFilter;
{$R *.dfm}

procedure TfrmDrAviraRprtSlctDlg.FormCreate(Sender: TObject);
begin
  inherited;
  LoadRprtItems('DA');
end;

procedure TfrmDrAviraRprtSlctDlg.btnPrintClick(Sender: TObject);
begin
  inherited;
  PrintRprt('');
end;

procedure TfrmDrAviraRprtSlctDlg.btnRTFClick(Sender: TObject);
begin
  inherited;
  SendToRtfRprt('');
end;

procedure TfrmDrAviraRprtSlctDlg.btnPreviewClick(Sender: TObject);
begin
  inherited;
  PreviewRprt('');
end;

end.
