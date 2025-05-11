unit TblBiikoret;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, DB, ActnList, DBTables, ImgList, Grids, DBGrids,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin;

type
  TfrmGnrlTbl2 = class(TfrmGnrlTbl)
    ToolBar2: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    dbGridScnd: TDBGrid;
    dsTblScnd: TDataSource;
    tbTblScnd: TTable;
    acAppendScnd: TAction;
    acDeleteScnd: TAction;
    tbTblID: TAutoIncField;
    tbTblBikoret: TStringField;
    tbTblScndID: TAutoIncField;
    tbTblScndIdBikoret: TIntegerField;
    tbTblScndBikoretDtl: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGnrlTbl2: TfrmGnrlTbl2;

implementation

{$R *.dfm}

end.
