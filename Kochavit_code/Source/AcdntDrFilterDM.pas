unit AcdntDrFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmAcdntDrFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterAcdntD: TDateField;
    qrFilterWithInjr: TStringField;
    qrFilterQuilty: TStringField;
    qrFilterShemD: TStringField;
    qrFilterZeut: TStringField;
    qrFilterNumber: TStringField;
    qrFilterShem: TStringField;
    qrFilterTipul: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcdntDrFilter: TdmAcdntDrFilter;

implementation

{$R *.dfm}

end.
