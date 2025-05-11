unit SlctOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, edbcomps;

type
  TfrmSlctOther = class(TForm)
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnClose: TBitBtn;
    Panel3: TPanel;
    dsSlctOther: TDataSource;
    dbGrid: TDBGrid;
    qrSlctOther: TEDBQuery;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    Id: Integer;
    { Public declarations }
  end;

var
  frmSlctOther: TfrmSlctOther;

implementation

{$R *.dfm}

procedure TfrmSlctOther.btnOkClick(Sender: TObject);
begin
  Id := qrSlctOther.FieldByName('Id').AsInteger;
end;

end.
