unit TipulFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmTipulFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterTipul: TStringField;
    qrFilterDateDone: TDateField;
    qrFilterKm: TIntegerField;
    qrFilterOved: TStringField;
    qrFilterNoBkr: TIntegerField;
    qrFilterCodCar: TIntegerField;
    qrFilterNumber: TStringField;
    qrFilterType: TStringField;
    qrFilterProducer: TStringField;
    qrFilterCod: TIntegerField;
    qrFilterShem: TStringField;
    qrFilterRemark: TStringField;
    dsFilter: TDataSource;
    qrDtl: TEDBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTipulFilter: TdmTipulFilter;

implementation

{$R *.dfm}

end.
