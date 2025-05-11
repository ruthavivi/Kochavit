unit TblDocumentCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, DB, edbcomps, ActnList, ImgList, Grids, DBGrids, MyChkDBGrid,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, Vcl.StdActns;

type
  TfrmDocumentCarTbl = class(TfrmGnrlTbl)
    tbTblId: TAutoIncField;
    tbTblDocument: TStringField;
    qrGnrl: TEDBQuery;
    procedure acDeleteExecute(Sender: TObject);
    procedure tbTblBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentCarTbl: TfrmDocumentCarTbl;

implementation
uses
  DialogsHeb;

{$R *.dfm}

procedure TfrmDocumentCarTbl.acDeleteExecute(Sender: TObject);
begin
  qrGnrl.SQL.Text := 'SELECT Id FROM KCrTofes ' +
                     'WHERE DocumentNameId = ' + tbTblId.AsString;
  try
    qrGnrl.Open;
    if not qrGnrl.IsEmpty then
      MessageDlgH('הערך ' + DBGrid.SelectedField.Text + ' בשימוש ואינו ניתן למחיקה ',
              mtError, [mbOK], 0, 0)
    else
     inherited;
  finally
    qrGnrl.Close;
  end;
end;

procedure TfrmDocumentCarTbl.tbTblBeforePost(DataSet: TDataSet);
begin
//  inherited;
end;

end.
