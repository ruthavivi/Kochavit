unit NoDataTipul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls, RpBase, RpSystem, RpDefine, RpRave, RpCon, RpConDS, RpConBDE;

type
  TfrmNoDataTipul = class(TForm)
    Panel1: TPanel;
    qrGnrl: TQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tbTblTipul: TTable;
    dsTblTipul: TDataSource;
    dsGnrl: TDataSource;
    cbTipul: TComboBox;
    RvRprt: TRvProject;
    RvSystem: TRvSystem;
    rqNoDataTipul: TRvQueryConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbTipulSelect(Sender: TObject);
  private
    procedure LoadTipulData;
  public
    { Public declarations }
  end;

var
  frmNoDataTipul: TfrmNoDataTipul;

implementation
{$R *.dfm}

procedure TfrmNoDataTipul.FormCreate(Sender: TObject);
begin
  LoadTipulData;
  RvRprt.ProjectFile := ExtractFilePath(Application.ExeName) +
                          'Reports\KvRprt.rav';
end;

procedure TfrmNoDataTipul.LoadTipulData;
begin
  with tbTblTipul do
  begin
    Open;
    First;
    while not EOF do
    begin
      if (FieldByName('Tipul').AsString <> '') then
        cbTipul.Items.Add(FieldByName('Tipul').AsString);
      Next;
    end;
    Close;
  end;
end;

procedure TfrmNoDataTipul.cbTipulSelect(Sender: TObject);
begin
  qrGnrl.Close;
  qrGnrl.ParamByName('Tipul').AsString := cbTipul.Text;
  qrGnrl.Open;
end;

procedure TfrmNoDataTipul.BitBtn2Click(Sender: TObject);
begin
  RvRprt.ExecuteReport('rpNoDataTipul');
end;

procedure TfrmNoDataTipul.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tbTblTipul.Close;
  Action := caFree;
end;

end.
