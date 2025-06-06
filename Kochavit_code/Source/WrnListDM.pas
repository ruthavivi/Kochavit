unit WrnListDM;

interface

uses
  SysUtils, Classes, Forms, DB, DateUtils, edbcomps, edbtype;

type
  TdmWrnList = class(TDataModule)
    qrGnrl: TEDBQuery;
    qrTofesMain: TEDBQuery;
    qrTofesLikuy: TEDBQuery;
    dsTofesMain: TDataSource;
    qrTofesTipul: TEDBQuery;
    qrTofesHeiter: TEDBQuery;
    procedure qrTofesMainBeforeOpen(DataSet: TDataSet);
    procedure qrTofesTipulBeforeOpen(DataSet: TDataSet);
  private
    TillMoed: String;
    procedure UpdateTipulMainNew(pOved, pKm, pRemark, pNoBkr, pProblem: String;
        pDateDone, pDateToDo: TDate);
    procedure InsertTipulMainHis;
    procedure SetCarSpido(pKm, pPolisaN: String);
    procedure DeleteTipulDtl;
    procedure InsertTipulDtlNew(pBikoretDtlId: TStringList);
    procedure InsertTipulDtlHis(pBikoretDtlId: TStringList);
    procedure UpdateHeiterNew(pRemark, pProblem: String; pDateDone, pDateToDo: TDate);
    procedure UpdateHeiterHis;
    procedure SetTillMoed;
  public
    procedure SetTillMoedRprt;
    procedure UpdateTipul(pOved, pKm, pRemark, pNoBkr, pPolisaN, pProblem: String;
        pDateDone, pDateToDo: TDate; pBikoretDtlId: TStringList); overload;
    procedure UpdateTipul(pOved, pRemark, pProblem: String;
        pDateDone, pDateToDo: TDate); overload;
    procedure UpdateHeiter(pRemark, pProblem: String; pDateDone, pDateToDo: TDate);
  end;

var
  dmWrnList: TdmWrnList;

implementation
uses
  DataDM, MainDM, LogErrorUtil;
{$R *.dfm}

{ TdmWrnList }

procedure TdmWrnList.UpdateTipul(pOved, pKm, pRemark, pNoBkr, pPolisaN, pProblem: String;
  pDateDone, pDateToDo: TDate; pBikoretDtlId: TStringList);
begin
  try
    dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
    UpdateTipulMainNew(pOved, pKm, pRemark, pNoBkr, pProblem, pDateDone, pDateToDo);
    InsertTipulMainHis;
    SetCarSpido(pKm, pPolisaN);
    DeleteTipulDtl;
    if ((dmMain.qrWrnCarTipul.AsString = '������ ������') or
              (dmMain.qrWrnCarTipul.AsString = '������ �� ������')) and
              (pBikoretDtlId.Count > 0) then
    begin
      InsertTipulDtlNew(pBikoretDtlId);
      InsertTipulDtlHis(pBikoretDtlId);
    end;
    dmData.dbMain.Commit;
    dmMain.qrWrnCar.Refresh;
    dmMain.RecNoWrnCar := dmMain.qrWrnCar.RecordCount;
  except
    on E: EDatabaseError do
    begin
      dmData.dbMain.Rollback;
      HandelError('TdmWrnList.UpdateTipul', '����� �� ����' + E.Message, E);
    end;
  end;
end;

procedure TdmWrnList.UpdateTipul(pOved, pRemark, pProblem: String; pDateDone,
  pDateToDo: TDate);
begin
  dmMain.qrWrnCar.First;
  while not dmMain.qrWrnCar.Eof do
  begin
    try
      dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
      UpdateTipulMainNew(pOved, 'NULL', pRemark, 'NULL', pProblem, pDateDone, pDateToDo);
      InsertTipulMainHis;
      dmData.dbMain.Commit;
    except
      on E: EDatabaseError do
      begin
        dmData.dbMain.Rollback;
        HandelError('TdmWrnList.UpdateTipul', '����� �� ����' + E.Message, E);
      end;
    end;
    dmMain.qrWrnCar.Next;
  end;
  dmMain.qrWrnCar.Refresh;
end;

procedure TdmWrnList.UpdateTipulMainNew(pOved, pKm, pRemark, pNoBkr,
  pProblem: String; pDateDone, pDateToDo: TDate);
var
  OvedId: String;
begin
  OvedId :=  dmData.GetId('KTblOved', 'Oved', pOved);
  if (OvedId = '') then
    OvedId := 'NULL';
  qrGnrl.SQL.Text := 'UPDATE KCrTipul SET OvedId = ' + OvedId + ', Km = ' + pKm +
          ', DateDone = DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pDateDone)) +
          ', DateToDo = DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pDateToDo)) +
          ', Remark  = ' + pRemark + ', NoBkr = ' + pNoBkr + ', Problem = ' + pProblem +
          ' WHERE Id = ' + dmMain.qrWrnCarId.AsString;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.InsertTipulMainHis;
begin
  qrGnrl.SQL.Text := 'INSERT Into KCrTipulHis ' +
      '(CarId, TipulId, OvedId, Km, DateDone, Remark, NoBkr) ' +
      'SELECT CarId, TipulId, OvedId, Km, DateDone, Remark, NoBkr '+
      'FROM KCrTipul WHERE Id = ' + dmMain.qrWrnCarId.AsString;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.SetCarSpido(pKm, pPolisaN: String);
begin
  if (pKm <> 'NULL') AND (pPolisaN <> 'NULL')  then
  begin
    qrGnrl.SQL.Text := 'UPDATE KCar SET Spido = ' + pKm + ', PolisaN = ' + QuotedStr(pPolisaN)+
        ' WHERE Id = ' + 'SELECT CarId FROM KCrTipul WHERE Id = ' + dmMain.qrWrnCarId.AsString;
  end
  else if (pKm <> 'NULL') AND (pPolisaN = 'NULL')  then
  begin
    qrGnrl.SQL.Text := 'UPDATE KCar SET Spido = ' + pKm +
        ' WHERE Id = ' + 'SELECT CarId FROM KCrTipul WHERE Id = ' + dmMain.qrWrnCarId.AsString;
  end
  else if (pKm = 'NULL') AND (pPolisaN <> 'NULL')  then
  begin
     qrGnrl.SQL.Text := 'UPDATE KCar SET PolisaN = ' + QuotedStr(pPolisaN)+
        ' WHERE Id = ' + 'SELECT CarId FROM KCrTipul WHERE Id = ' + dmMain.qrWrnCarId.AsString;
  end;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.DeleteTipulDtl;
begin
  qrGnrl.SQL.Text := 'DELETE FROM KCrTipulDtl ' +
           'WHERE TipulId = ' + dmMain.qrWrnCarId.AsString;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.InsertTipulDtlNew(pBikoretDtlId: TStringList);
var
  i: Integer;
begin
  for i := 0 to pBikoretDtlId.Count -1 do
  begin
    qrGnrl.SQL.Text := 'INSERT INTO KCrTipulDtl (TipulId, BikoretDtlId) ' +
           'VALUES (' + dmMain.qrWrnCarId.AsString + ', ' + pBikoretDtlId[i] + ')';
    qrGnrl.ExecSQL;
  end;
end;

procedure TdmWrnList.InsertTipulDtlHis(pBikoretDtlId: TStringList);
var
  i: Integer;
  Id: String;
begin
  qrGnrl.SQL.Text := 'SELECT Max(Id) AS Id FROM KCrTipulHis ';
  qrGnrl.Open;
  Id := qrGnrl.FieldByName('Id').AsString;
  qrGnrl.Close;

  for i := 0 to pBikoretDtlId.Count -1 do
  begin
    qrGnrl.SQL.Text := 'INSERT INTO KCrTipulDtlHis (TipulId, BikoretDtlId) ' +
           'VALUES (' + Id + ', ' + pBikoretDtlId[i] + ')';
    qrGnrl.ExecSQL;
  end;
end;

procedure TdmWrnList.UpdateHeiter(pRemark, pProblem: String; pDateDone,
  pDateToDo: TDate);
begin
  try
    dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
    UpdateHeiterNew(pRemark, pProblem, pDateDone, pDateToDo);
    UpdateHeiterHis;
    dmData.dbMain.Commit;
    dmMain.qrWrnDrv.Refresh;
    dmMain.RecNoWrnDrv := dmMain.qrWrnDrv.RecordCount;
  except
    on E: EDatabaseError do
    begin
      dmData.dbMain.Rollback;
      HandelError('TdmWrnList.UpdateHeiter', '����� �� ����' + E.Message, E);
    end;
  end;
end;

procedure TdmWrnList.UpdateHeiterNew(pRemark, pProblem: String; pDateDone,
  pDateToDo: TDate);
begin
  qrGnrl.SQL.Text := 'UPDATE KDrHeiter SET ' +
        'DateDone = DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pDateDone)) +
        ', DateToDo = DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pDateToDo)) +
        ', Remark  = ' + pRemark + ', Problem = ' + pProblem +
        ' WHERE Id = ' + dmMain.qrWrnDrvId.AsString;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.UpdateHeiterHis;
begin
  qrGnrl.SQL.Text := 'INSERT Into KDrHeiterHis ' +
      '(DriverId, HeiterId, DateDone) ' +
      'SELECT DriverId, HeiterId, DateDone '+
      'FROM KDrHeiter WHERE Id = ' + dmMain.qrWrnDrvId.AsString;
  qrGnrl.ExecSQL;
end;

procedure TdmWrnList.qrTofesMainBeforeOpen(DataSet: TDataSet);
var
  Path: String;
begin
  SetTillMoed;
  Path := ExtractFilePath(Application.ExeName) + 'SQL\';
  qrTofesMain.SQL.LoadFromFile(Path + 'Tofes.SQL');
  qrTofesMain.SQL.Add(dmMain.qrWrnCar.SQL[dmMain.qrWrnCar.SQL.Count -2]);
  qrTofesMain.SQL.Add(dmMain.qrWrnCar.SQL[dmMain.qrWrnCar.SQL.Count -1]);
  qrTofesMain.ParamByName('prmDateF').AsDate :=
          dmMain.qrWrnCar.ParamByName('prmDateF').AsDate;
  qrTofesMain.ParamByName('prmDateP').AsDate :=
          dmMain.qrWrnCar.ParamByName('prmDateP').AsDate;
end;

procedure TdmWrnList.SetTillMoed;
begin
  qrGnrl.SQL.Text := 'SELECT MonthLmt FROM KDefault';
  try
    qrGnrl.Open;
    TillMoed := FormatDateTime('yyyy-mm-dd', IncMonth(Date,
              qrGnrl.FieldByName('MonthLmt').AsInteger));
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmWrnList.SetTillMoedRprt;
begin
  qrGnrl.SQL.Text := 'SELECT MonthLmt FROM KDefault';
  try
    qrGnrl.Open;
    TillMoed := DateToStr(IncMonth(Date, qrGnrl.FieldByName('MonthLmt').AsInteger));
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmWrnList.qrTofesTipulBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TEDBQuery).ParamByName('TillMoed').AsString := TillMoed;
end;

end.
