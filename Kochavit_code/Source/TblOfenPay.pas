unit TblOfenPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, ActnList, DB, ImgList, Grids, DBGrids, MyChkDBGrid,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, edbcomps, frxClass, frxDBSet,
  Vcl.StdActns, System.Actions, System.ImageList;

type
  TfrmOfenPayTbl = class(TfrmGnrlTbl)
    tbTblId: TAutoIncField;
    tbTblOfenPay: TStringField;
    frdbOfenPay: TfrxDBDataset;
    procedure acDeleteExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOfenPayTbl: TfrmOfenPayTbl;

implementation

{$R *.dfm}

procedure TfrmOfenPayTbl.acDeleteExecute(Sender: TObject);
begin
  if KeepIntegrity('OfenPayId', tbTblId.AsString, ['KClient']) then
    inherited;
end;

procedure TfrmOfenPayTbl.acPrintExecute(Sender: TObject);
begin
  inherited;
  PrintReport('rpOfenPay');
end;

end.
