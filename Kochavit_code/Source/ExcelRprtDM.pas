unit ExcelRprtDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Vcl.Forms, edbcomps;

type
  TdmExcelRprt = class(TDataModule)
    qrGnrl: TEDBQuery;
    qrGnrlX: TEDBQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    TipulList: TStringList;
    Cl_Number, Cl_Name: string;
    procedure LoadTipulList(ClientId: string);
    procedure CreateTable;
    procedure LoadTable(ClientId: string);
    procedure SetDataForExcel(Action: string; ToEmails: TStringList);
  public
    procedure CreateRprt(ClientId, ClientNumber: Integer; ClientName, Action: string;
      ToEmails: TStringList);
  end;

var
  dmExcelRprt: TdmExcelRprt;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmExcelRprt }

uses
  MainDM, ExportToExcel;

procedure TdmExcelRprt.CreateRprt(ClientId, ClientNumber: Integer; ClientName,
  Action: string; ToEmails: TStringList);
begin
  Cl_Number := IntToStr(ClientNumber);
  Cl_Name := ClientName;
  TipulList := TStringList.Create;
  LoadTipulList(IntToStr(ClientId));
  CreateTable;
  LoadTable(IntToStr(ClientId));
  SetDataForExcel(Action, ToEmails);
end;

procedure TdmExcelRprt.LoadTipulList(ClientId: string);
begin
  qrGnrl.SQL.Text := 'SELECT TipulId, Tipul FROM KCrTipul Ct ' +
      'LEFT JOIN KTblTipul tT ON (Ct.TipulId = tT.Id)' +
      'LEFT JOIN KCar Kc ON (Ct.CarId = Kc.Id)' +
      'WHERE ClientId = ' + ClientId + ' GROUP BY TipulId';
  TipulList.Clear;
  TipulList.NameValueSeparator := '=';
  try
    qrGnrl.Open;
    while not qrGnrl.Eof do
    begin
      TipulList.Add(qrGnrl.FieldByName('Tipul').AsString +'='+ qrGnrl.FieldByName('TipulId').AsString);
      qrGnrl.Next;
    end;
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmExcelRprt.CreateTable;
var
  I: Integer;
  Path, Query: string;
begin
  Path := ExtractFilePath(Application.ExeName) +  'Data\';
  if FileExists(Path+'ClientTpl.EDBTbl') then
  begin
    qrGnrl.SQL.Text := 'DROP TABLE ClientTpl';
    qrGnrl.ExecSQL;
  end;
  Query := 'CREATE TABLE "ClientTpl" '+
      '("ID" INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 0, INCREMENT BY 1), ' +
      '"CarNumber" VARCHAR(8) COLLATE "ANSI_CI", ' +
      '"CarType" VARCHAR(25) COLLATE "ANSI_CI", ';
  for I := 0 to TipulList.Count -1 do
    Query := Query + '"Tp_'+TipulList.ValueFromIndex[I]+'" VARCHAR(10) COLLATE "ANSI_CI", ';

  SetLength(Query, Length(Query)-2);
  qrGnrl.SQL.Text := Query + ')';
  qrGnrl.ExecSQL;
end;

procedure TdmExcelRprt.LoadTable(ClientId: string);
var
  QueryX, QueryV: string;
  CarNumber: string;
begin
  qrGnrl.SQL.Text := 'SELECT Number, TipulId, Tipul, Type, DateToDo ' +
      'FROM KCrTipul Ct LEFT JOIN KTblTipul tT ON (Ct.TipulId = tT.Id) ' +
      'LEFT JOIN KCar Kc ON (Ct.CarId = Kc.Id) ' +
      'LEFT JOIN KTblType tY ON (Kc.TypeId = tY.Id) '+
      'WHERE ClientId = ' + ClientId + ' and Pail = True ORDER BY Number, TipulId';
   try
    qrGnrl.Open;
    while not qrGnrl.Eof do
    begin
      QueryX := 'INSERT INTO ClientTpl (CarNumber, CarType,';
      QueryV := 'VALUES (';
      CarNumber := qrGnrl.FieldByName('Number').AsString;
      QueryV := QueryV + QuotedStr(qrGnrl.FieldByName('Number').AsString) +
          ', ' + QuotedStr(qrGnrl.FieldByName('Type').AsString) + ', ';
      while (qrGnrl.FieldByName('Number').AsString = CarNumber) and (not qrGnrl.Eof) do
      begin
        QueryX := QueryX + ' Tp_'+qrGnrl.FieldByName('TipulId').AsString+', ';
        QueryV := QueryV + QuotedStr((FormatDateTime('dd/mm/yyyy', qrGnrl.FieldByName('DateToDo').AsDateTime)))+', ';
        qrGnrl.Next;
      end;
      SetLength(QueryX, Length(QueryX)-2);
      SetLength(QueryV, Length(QueryV)-2);
      qrGnrlX.SQL.Text := QueryX + ') ' + QueryV +')';
      qrGnrlX.ExecSQL;
    end;
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmExcelRprt.SetDataForExcel(Action: string; ToEmails: TStringList);
var
  I, J: Integer;
begin
  qrGnrl.SQL.Text := 'SELECT * FROM ClientTpl';
  qrGnrl.Open;
  qrGnrl.Fields[1].DisplayLabel := '���� �����';
  qrGnrl.Fields[2].DisplayLabel := '��� ���';
  for I := 3 to qrGnrl.FieldCount - 1 do
  begin
    for J := 0 to TipulList.Count - 1 do
    begin
      if qrGnrl.Fields[I].FieldName = 'Tp_'+TipulList.ValueFromIndex[J] then
        qrGnrl.Fields[I].DisplayLabel := TipulList.Names[J];
    end;
  end;

  frmExportToExcel := TfrmExportToExcel.Create(Self);
  frmExportToExcel.SendToExcelFile(qrGnrl, Cl_Name, 'Status_'+Cl_Number, Action,
  'Cars',  ToEmails);
  qrGnrl.Close;
end;

procedure TdmExcelRprt.DataModuleDestroy(Sender: TObject);
begin
  TipulList.Free;
end;

end.
