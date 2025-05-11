unit GnrlListArhivDM;

interface

uses
  SysUtils, Classes, DB, edbcomps;

type
  TdmGnrlListArhiv = class(TDataModule)
    qrList: TEDBQuery;
    qrGnrl: TEDBQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ReOpenTable(pId: Integer);
  end;

var
  dmGnrlListArhiv: TdmGnrlListArhiv;

implementation
uses
  DataDM;
{$R *.dfm}

{ TdmGnrlListArhiv }

procedure TdmGnrlListArhiv.ReOpenTable(pId: Integer);
begin
  try
    qrList.DisableControls;
    qrList.Close;
    qrList.Open;
    qrList.Locate('Id', pId, []);
  finally
    qrList.EnableControls;
  end;
end;

procedure TdmGnrlListArhiv.DataModuleDestroy(Sender: TObject);
begin
  qrList.Close;
end;

end.
