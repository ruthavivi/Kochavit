unit AviraFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmAviraFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterDriverId: TIntegerField;
    qrFilterAviraD: TDateField;
    qrFilterDescrpt: TStringField;
    qrFilterDohNum: TStringField;
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
  dmAviraFilter: TdmAviraFilter;

implementation

{$R *.dfm}

end.
