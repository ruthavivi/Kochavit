unit AnualBillFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmAnualBillFilter = class(TdmGnrlFilter)
    qrFilterCod: TIntegerField;
    qrFilterShem: TStringField;
    qrFilterOved: TStringField;
    qrFilterSumPrClient: TFloatField;
    qrFilterClientId: TIntegerField;
    qrFilterNumAll: TLargeintField;
    qrFilterNumNo: TLargeintField;
    qrFilterNumYes: TLargeintField;
    qrFilterMsira: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAnualBillFilter: TdmAnualBillFilter;

implementation

{$R *.dfm}

end.
