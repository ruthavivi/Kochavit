unit TahoFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmTahoFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterMoed: TDateField;
    qrFilterSpeedTrg: TStringField;
    qrFilterZmanTrg: TStringField;
    qrFilterHarigTrg: TStringField;
    qrFilterRemark: TStringField;
    qrFilterShemD: TStringField;
    qrFilterNumber: TStringField;
    qrFilterShem: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTahoFilter: TdmTahoFilter;

implementation

{$R *.dfm}

end.
