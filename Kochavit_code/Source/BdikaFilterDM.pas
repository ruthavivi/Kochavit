unit BdikaFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmBdikaFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterDriverId: TIntegerField;
    qrFilterBdikaD: TDateField;
    qrFilterBdika: TStringField;
    qrFilterMakom: TStringField;
    qrFilterTipul: TStringField;
    qrFilterShemD: TStringField;
    qrFilterZeut: TStringField;
    qrFilterShem: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBdikaFilter: TdmBdikaFilter;

implementation

{$R *.dfm}

end.
