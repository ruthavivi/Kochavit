unit ExcelRprtDrvsDM;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, edbcomps, Data.DB;

type
  TdmExcelRprtDrvs = class(TDataModule)
    qrGnrl: TEDBQuery;
    qrGnrlX: TEDBQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    HeiterList: TStringList;
    Cl_Number, Cl_Name: string;
    procedure LoadHeiterList(ClientId: string);
    procedure CreateTable;
    procedure LoadTable(ClientId: string);
    procedure SetDataForExcel(Action: string; ToEmails: TStringList);
  public
    procedure CreateRprt(ClientId, ClientNumber: Integer; ClientName, Action: string;
      ToEmails: TStringList);
  end;

var
  dmExcelRprtDrvs: TdmExcelRprtDrvs;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmExcelRprt }

uses
  MainDM, ExportToExcel;

procedure TdmExcelRprtDrvs.CreateRprt(ClientId, ClientNumber: Integer; ClientName,
  Action: string; ToEmails: TStringList);
begin
  Cl_Number := IntToStr(ClientNumber);
  Cl_Name := ClientName;
  HeiterList := TStringList.Create;
  LoadHeiterList(IntToStr(ClientId));
  CreateTable;
  LoadTable(IntToStr(ClientId));
  SetDataForExcel(Action, ToEmails);
end;

procedure TdmExcelRprtDrvs.LoadHeiterList(ClientId: string);
begin
  qrGnrl.SQL.Text := 'SELECT HeiterId, Heiter FROM KDrHeiter Dh ' +
        'LEFT JOIN KTblHeiter tH ON (Dh.HeiterId = tH.Id) ' +
        'LEFT JOIN KDriver Kd ON (Dh.DriverId = Kd.Id) ' +
        'WHERE ClientId = ' + ClientId + ' GROUP BY HeiterId';
  HeiterList.Clear;
  HeiterList.NameValueSeparator := '=';
  try
    qrGnrl.Open;
    while not qrGnrl.Eof do
    begin
      HeiterList.Add(qrGnrl.FieldByName('Heiter').AsString +'='+ qrGnrl.FieldByName('HeiterId').AsString);
      qrGnrl.Next;
    end;
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmExcelRprtDrvs.CreateTable;
var
  I: Integer;
  Path, Query: string;
begin
  Path := ExtractFilePath(Application.ExeName) +  'Data\';
  if FileExists(Path+'ClientHtr.EDBTbl') then
  begin
    qrGnrl.SQL.Text := 'DROP TABLE ClientHtr';
    qrGnrl.ExecSQL;
  end;
  Query := 'CREATE TABLE "ClientHtr" '+
      '("ID" INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 0, INCREMENT BY 1), ' +
      '"ShemD" VARCHAR(35) COLLATE "ANSI_CI", ' +
      '"Zeut" VARCHAR(14) COLLATE "ANSI_CI", ' +
      '"LicenceNum" VARCHAR(7) COLLATE "ANSI_CI", ';
  for I := 0 to HeiterList.Count -1 do
    Query := Query + '"Ht_'+HeiterList.ValueFromIndex[I]+'" VARCHAR(10) COLLATE "ANSI_CI", ';

  SetLength(Query, Length(Query)-2);
  qrGnrl.SQL.Text := Query + ')';
  qrGnrl.ExecSQL;
end;

procedure TdmExcelRprtDrvs.LoadTable(ClientId: string);
var
  QueryX, QueryV: string;
  ShemD: string;
begin
  qrGnrl.SQL.Text := 'SELECT ShemD, HeiterId, Heiter, Zeut, DateToDo, LicenceNum ' +
      'FROM KDrHeiter Dh ' +
      'LEFT JOIN KTblHeiter tH ON (Dh.HeiterId = tH.Id) ' +
      'LEFT JOIN KDriver Kd ON (Dh.DriverId = Kd.Id) ' +
      'WHERE ClientId = '+ ClientId + ' and Pail = True ORDER BY ShemD, HeiterId';
   try
    qrGnrl.Open;
    while not qrGnrl.Eof do
    begin
      QueryX := 'INSERT INTO ClientHtr (ShemD, Zeut, LicenceNum, ';
      QueryV := 'VALUES (';
      ShemD := qrGnrl.FieldByName('ShemD').AsString;
      QueryV := QueryV + QuotedStr(qrGnrl.FieldByName('ShemD').AsString) +
          ', ' + QuotedStr(qrGnrl.FieldByName('Zeut').AsString) + ', ' +
          QuotedStr(qrGnrl.FieldByName('LicenceNum').AsString) + ', ';
      while (qrGnrl.FieldByName('ShemD').AsString = ShemD) and (not qrGnrl.Eof) do
      begin
        QueryX := QueryX + ' Ht_'+qrGnrl.FieldByName('HeiterId').AsString+', ';
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

procedure TdmExcelRprtDrvs.SetDataForExcel(Action: string; ToEmails: TStringList);
var
  I, J: Integer;
begin
  qrGnrl.SQL.Text := 'SELECT * FROM ClientHtr';
  qrGnrl.Open;
  qrGnrl.Fields[1].DisplayLabel := 'שם הנהג';
  qrGnrl.Fields[2].DisplayLabel := 'ת. זהות';
  qrGnrl.Fields[3].DisplayLabel := 'מספר רשיון';
  for I := 4 to qrGnrl.FieldCount - 1 do
  begin
    for J := 0 to HeiterList.Count - 1 do
    begin
      if qrGnrl.Fields[I].FieldName = 'Ht_'+HeiterList.ValueFromIndex[J] then
        qrGnrl.Fields[I].DisplayLabel := HeiterList.Names[J];
    end;
  end;

  frmExportToExcel := TfrmExportToExcel.Create(Self);
  frmExportToExcel.SendToExcelFile(qrGnrl, Cl_Name, 'StatusD_'+Cl_Number, Action,
    'Drvs', ToEmails);
  qrGnrl.Close;
end;

procedure TdmExcelRprtDrvs.DataModuleDestroy(Sender: TObject);
begin
  HeiterList.Free;
end;

end.
