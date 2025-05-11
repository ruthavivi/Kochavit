unit AcdntFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmAcdntFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterCarId: TIntegerField;
    qrFilterAcdntD: TDateField;
    qrFilterDescrpt: TStringField;
    qrFilterStatus: TStringField;
    qrFilterCodCar: TIntegerField;
    qrFilterNumber: TStringField;
    qrFilterType: TStringField;
    qrFilterProducer: TStringField;
    qrFilterCod: TIntegerField;
    qrFilterShem: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcdntFilter: TdmAcdntFilter;

implementation

{$R *.dfm}

end.
