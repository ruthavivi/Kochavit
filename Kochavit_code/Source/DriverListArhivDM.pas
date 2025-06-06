unit DriverListArhivDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlListArhivDM, DB, edbcomps;

type
  TdmDriverListArhiv = class(TdmGnrlListArhiv)
    qrListId: TIntegerField;
    qrListCodDrv: TIntegerField;
    qrListShemD: TStringField;
    qrListZeut: TStringField;
    qrListShem: TStringField;
    qrListLicenceNum: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrListBeforeOpen(DataSet: TDataSet);
    procedure qrListAfterRefresh(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure ShiftToPail;
  public
    DriverOrder, DriverRecNo: String;
  end;

var
  dmDriverListArhiv: TdmDriverListArhiv;

implementation
uses
  KbFunc, LogErrorUtil;

{$R *.dfm}

procedure TdmDriverListArhiv.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DriverOrder := GetIniValue('Driver', 'Order', 'CodDrv');
  try
    qrList.Open;
  except
    on E: EDatabaseError do
    begin
      HandelError('TdmDriverListArhiv.DataModuleCreate', '!!! ���� ���� �� ����' + #10#13 + E.Message, E);
      Self.Destroy;
    end;
  end;
end;

procedure TdmDriverListArhiv.qrListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrList.SQL[qrList.SQL.Count-1] := 'ORDER BY ' + DriverOrder;
end;

procedure TdmDriverListArhiv.qrListAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  DriverRecNo := IntToStr(qrList.RecordCount);
end;

procedure TdmDriverListArhiv.ShiftToPail;
begin
  qrGnrl.SQL.Text := 'UPDATE KDriver SET Pail = True ' +
                'WHERE Id = ' + qrList.FieldByName('Id').AsString;
  qrGnrl.ExecSQL;
  ReOpenTable(0);
end;

procedure TdmDriverListArhiv.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  SetIniValue('Driver', 'Order', DriverOrder);
  dmDriverListArhiv := nil;
end;

end.
