unit CarListArhivDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlListArhivDM, DB, edbcomps;

type
  TdmCarListArhiv = class(TdmGnrlListArhiv)
    qrListId: TIntegerField;
    qrListCodCar: TIntegerField;
    qrListNumber: TStringField;
    qrListType: TStringField;
    qrListProducer: TStringField;
    qrListShem: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrListBeforeOpen(DataSet: TDataSet);
    procedure qrListAfterRefresh(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure ShiftToPail;
  public
    CarOrder, CarRecNo: String;
  end;

var
  dmCarListArhiv: TdmCarListArhiv;

implementation
uses
  KbFunc, LogErrorUtil;

{$R *.dfm}

procedure TdmCarListArhiv.DataModuleCreate(Sender: TObject);
begin
  inherited;
  CarOrder := GetIniValue('Car', 'Order', 'Shem');
  try
    qrList.Open;
  except
    on E: EDatabaseError do
    begin
      HandelError('TdmCarListArhiv.DataModuleCreate', '!!! ���� ���� �� ����' + #10#13 + E.Message, E);
      Self.Destroy;
    end;
  end;
end;

procedure TdmCarListArhiv.qrListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrList.SQL[qrList.SQL.Count-1] := 'ORDER BY ' + CarOrder;
end;

procedure TdmCarListArhiv.qrListAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  CarRecNo := IntToStr(qrList.RecordCount);
end;

procedure TdmCarListArhiv.ShiftToPail;
begin
  qrGnrl.SQL.Text := 'UPDATE KCar SET Pail = True ' +
                'WHERE Id = ' + qrList.FieldByName('Id').AsString;
  qrGnrl.ExecSQL;
  ReOpenTable(0);
end;

procedure TdmCarListArhiv.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  SetIniValue('Car', 'Order', CarOrder);
  dmCarListArhiv := nil;
end;

end.
