unit TblCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, ActnList, DB, ImgList, Grids, DBGrids,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, MyChkDBGrid, edbcomps, frxClass,
  frxDBSet, Vcl.StdActns, System.Actions, System.ImageList;

type
  TfrmCargoTbl = class(TfrmGnrlTbl)
    tbTblCargo: TStringField;
    tbTblID: TAutoIncField;
    frdbCargo: TfrxDBDataset;
    procedure acPrintExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargoTbl: TfrmCargoTbl;

implementation

{$R *.dfm}

procedure TfrmCargoTbl.acDeleteExecute(Sender: TObject);
begin
  if KeepIntegrity('CargoId', tbTblId.AsString, ['KCar']) then
  inherited;
end;

procedure TfrmCargoTbl.acPrintExecute(Sender: TObject);
begin
  inherited;
  PrintReport('rpCargo');
end;

end.
