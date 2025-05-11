unit TblCause;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, ActnList, DB, ImgList, Grids, DBGrids,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, MyChkDBGrid, edbcomps, frxClass,
  frxDBSet, Vcl.StdActns, System.Actions, System.ImageList;

type
  TfrmCauseTbl = class(TfrmGnrlTbl)
    tbTblId: TAutoIncField;
    tbTblCauseCl: TStringField;
    tbTblCauseCr: TStringField;
    tbTblCauseDr: TStringField;
    frdbCause: TfrxDBDataset;
    procedure acPrintExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCauseTbl: TfrmCauseTbl;

implementation

{$R *.dfm}


procedure TfrmCauseTbl.acDeleteExecute(Sender: TObject);
begin
  if KeepIntegrity('IdSiba', tbTblId.AsString, ['KClSiba']) then
    inherited;
end;

procedure TfrmCauseTbl.acPrintExecute(Sender: TObject);
begin
  inherited;
  PrintReport('rpCause');
end;

end.
