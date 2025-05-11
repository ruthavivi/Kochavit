unit ClientFilterDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilterDM, DB, edbcomps;

type
  TdmClientFilter = class(TdmGnrlFilter)
    qrFilterId: TIntegerField;
    qrFilterCod: TIntegerField;
    qrFilterHp: TIntegerField;
    qrFilterOpenDate: TDateField;
    qrFilterShem: TStringField;
    qrFilterBahalim1: TStringField;
    qrFilterTelB1: TStringField;
    qrFilterBahalim2: TStringField;
    qrFilterTelB2: TStringField;
    qrFilterKtovet: TStringField;
    qrFilterIsuv: TStringField;
    qrFilterMikud: TIntegerField;
    qrFilterTel1: TStringField;
    qrFilterTel2: TStringField;
    qrFilterFax: TStringField;
    qrFilterEMail: TStringField;
    qrFilterContact: TStringField;
    qrFilterTelC: TStringField;
    qrFilterAcounter: TStringField;
    qrFilterTelA: TStringField;
    qrFilterProfesion: TStringField;
    qrFilterTelP: TStringField;
    qrFilterZeutP: TIntegerField;
    qrFilterKtovetP: TStringField;
    qrFilterSizeP: TIntegerField;
    qrFilterPeriodPay: TSmallintField;
    qrFilterCreditPay: TSmallintField;
    qrFilterOvedId: TSmallintField;
    qrFilterRemark: TMemoField;
    qrFilterDept: TFloatField;
    qrFilterFreze: TBooleanField;
    qrFilterMovil: TStringField;
    qrFilterZeutM: TIntegerField;
    qrFilterOfenPayId: TIntegerField;
    qrFilterPail: TBooleanField;
    qrFilterStamp: TDateTimeField;
    qrFilterOved: TStringField;
    qrFilterOfenPay: TStringField;
    qrFilterCarNum: TIntegerField;
    qrFilterCarSum: TFloatField;
    qrFilterShumPerCar: TFloatField;
    qrFilterEMailX: TStringField;
    qrFilterMsira: TBooleanField;
    procedure qrFilterMsiraGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClientFilter: TdmClientFilter;

implementation

{$R *.dfm}

procedure TdmClientFilter.qrFilterMsiraGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsBoolean then
    Text := 'כן'
  else
    Text := 'לא';
end;

end.
