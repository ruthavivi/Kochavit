unit TblCourse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, ActnList, DB, ImgList, Grids, DBGrids,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, MyChkDBGrid, edbcomps, frxClass,
  frxDBSet, Vcl.StdActns, System.Actions, System.ImageList;

type
  TfrmCourseTbl = class(TfrmGnrlTbl)
    tbTblId: TAutoIncField;
    tbTblCourse: TStringField;
    tbTblHourNum: TIntegerField;
    tbTblTeuda: TStringField;
    frdbCourse: TfrxDBDataset;
    procedure acPrintExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCourseTbl: TfrmCourseTbl;

implementation

{$R *.dfm}

procedure TfrmCourseTbl.acDeleteExecute(Sender: TObject);
begin
  if KeepIntegrity('IdHeiter', tbTblId.AsString, ['KDrHeiter']) then
    inherited;
end;

procedure TfrmCourseTbl.acPrintExecute(Sender: TObject);
begin
  inherited;
  PrintReport('rpCourse');
end;

end.
