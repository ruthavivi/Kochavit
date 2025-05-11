unit History;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, edbcomps, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmHistory = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    qrHistory: TEDBQuery;
    dsHistory: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure OpenRecord;
  end;

var
  frmHistory: TfrmHistory;

implementation
uses
  LogErrorUtil;
{$R *.dfm}

{ TfrmHistory }

procedure TfrmHistory.OpenRecord;
begin
  try
    qrHistory.Open;
  except
    on E: EDatabaseError do
    begin
      HandelError('TfrmCause.OpenRecord', 'קיים קובץ לא תקין!!!'+ #10#13 + E.Message, E);
      Self.Destroy;
    end;
  end;
end;

procedure TfrmHistory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrHistory.Close;
  Action := caFree;
end;

end.
