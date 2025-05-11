unit TblDocumentDriver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, DB, edbcomps, ActnList, ImgList, Grids, DBGrids, MyChkDBGrid,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, Vcl.StdActns;

type
  TfrmDocumentDriverTbl = class(TfrmGnrlTbl)
    tbTblId: TAutoIncField;
    tbTblDocument: TStringField;
    qrGnrl: TEDBQuery;
    procedure acDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentDriverTbl: TfrmDocumentDriverTbl;

implementation
uses
  DialogsHeb;
{$R *.dfm}

procedure TfrmDocumentDriverTbl.acDeleteExecute(Sender: TObject);
begin
  qrGnrl.SQL.Text := 'SELECT Id FROM KDrTofes ' +
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

end.
