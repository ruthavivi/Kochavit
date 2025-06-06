unit TblHeiter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlTbl, ActnList, DB, ImgList, Grids, DBGrids,
  ExtCtrls, ComCtrls, StdCtrls, DBCtrls, ToolWin, MyChkDBGrid,
  edbcomps, frxClass, frxDBSet, Vcl.StdActns, System.Actions, System.ImageList;

type
  TfrmTblHeiter = class(TfrmGnrlTbl)
    tbTblHeiter: TStringField;
    tbTblTedirut: TSmallintField;
    tbTblKavua: TBooleanField;
    tbTblMoedKavua: TBooleanField;
    acAddAuto: TAction;
    acRemoveAuto: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbTblID: TAutoIncField;
    qrGnrlAddRemove: TEDBQuery;
    qrDriver: TEDBQuery;
    frdbHeiter: TfrxDBDataset;
    tbTblPrime: TBooleanField;
    procedure acPrintExecute(Sender: TObject);
    procedure acAddAutoExecute(Sender: TObject);
    procedure acRemoveAutoExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
  private
    procedure AddHeiter(pDrvId: String);
    procedure RemoveHeiter(pDrvId: String);
  public
    { Public declarations }
  end;

var
  frmTblHeiter: TfrmTblHeiter;

implementation
uses
  MainDM, DialogsHeb;
{$R *.dfm}

procedure TfrmTblHeiter.acPrintExecute(Sender: TObject);
begin
  inherited;
  PrintReport('rpHeiter');
end;

procedure TfrmTblHeiter.acDeleteExecute(Sender: TObject);
begin
  if KeepIntegrity('HeiterId', tbTblId.AsString, ['KDrHeiter']) then
  inherited;
end;

procedure TfrmTblHeiter.acAddAutoExecute(Sender: TObject);
begin
  if (MessageDlgH('������ ��� ������ �����' + #13#10 + tbTblHeiter.AsString,
      mtConfirmation, [mbOk, mbNo], 0, 0) = mrOk) then
  begin
    try
      Screen.Cursor := crHourGlass;
      qrDriver.Open;
      while not qrDriver.Eof do
      begin
        AddHeiter(qrDriver.FieldByName('Id').AsString);
        qrDriver.Next;
      end;
    finally
      qrDriver.Close;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmTblHeiter.acRemoveAutoExecute(Sender: TObject);
begin
  inherited;
  if (MessageDlgH('����� ��� ������ �����' + #13#10 + tbTblHeiter.AsString,
      mtConfirmation, [mbOk, mbNo], 0, 0) = mrOk) then
  begin
    try
      Screen.Cursor := crHourGlass;
      qrDriver.Open;
      while not qrDriver.Eof do
      begin
        RemoveHeiter(qrDriver.FieldByName('Id').AsString);
        qrDriver.Next;
      end;
    finally
      qrDriver.Close;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmTblHeiter.AddHeiter(pDrvId: String);
var
  Id: Integer;
  HasHeiter: Boolean;
begin
  qrGnrlAddRemove.SQL.Text := 'SELECT Id FROM KDrHeiter ' +
      'WHERE DriverId = ' + pDrvId + ' and HeiterId = ' + tbTblId.AsString;
  qrGnrlAddRemove.Open;
  HasHeiter := True;
  if qrGnrlAddRemove.Eof then
    HasHeiter := False;
  qrGnrlAddRemove.Close;
  if not HasHeiter then
  begin
    Id := dmMain.GenerateNewId('NextNoTpl');
    qrGnrlAddRemove.SQL.Text := 'INSERT INTO KDrHeiter (Id, DriverId, HeiterId) ' +
                      'VALUES ('+ IntToStr(Id) + ', ' + pDrvId + ', ' + tbTblId.AsString + ')';
    qrGnrlAddRemove.ExecSQL;
  end;
end;

procedure TfrmTblHeiter.RemoveHeiter(pDrvId: String);
begin
  qrGnrlAddRemove.SQL.Text := 'DELETE FROM KDrHeiter ' +
          'WHERE DriverId = ' + pDrvId + ' and HeiterId = ' + tbTblId.AsString;
  qrGnrlAddRemove.ExecSQL;
end;

end.
