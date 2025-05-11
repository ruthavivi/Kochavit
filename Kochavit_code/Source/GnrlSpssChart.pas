unit GnrlSpssChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart;

type
  TfrmChart = class(TForm)
    dcChart: TDBChart;
    Series1: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChart: TfrmChart;

implementation

{$R *.dfm}

end.
