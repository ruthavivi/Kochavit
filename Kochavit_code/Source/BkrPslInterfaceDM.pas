unit BkrPslInterfaceDM;

interface

uses
  Winapi.Windows, System.Variants, Forms, Controls, System.SysUtils, System.Classes,
  System.Json, System.Json.Writers,
  StdCtrls, System.Json.Builders, System.Json.Types, System.Json.Readers,
  Data.DB, edbcomps, Dialogs, DialogsHeb, LogErrorUtil, System.IOUtils,
  URLMon, ShellApi, MainDM, System.UITypes;


type
  TCarInspect = record
    TestId: string;
    InspectDone: string;
    InspectTodo: string;
    CarKm: string;
    InspectRemark: string;
  end;

type
  TdmBkrPslInterface = class(TDataModule)
  private
    { Private declarations }
    StrW: TStringWriter;
    function Export2Json(qrTests: TEDBQuery): Boolean;
    procedure Save2Json;
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    procedure ReadFromJson;
    procedure MoveToRecord(pJtr: TJsonTextReader);
    procedure MoveRecord2File;
  public
    { Public declarations }
    procedure SendTests2Mob(qrTests: TEDBQuery);
    procedure GetFileFromMob;
  end;

var
  dmBkrPslInterface: TdmBkrPslInterface;
  CarIns: TCarInspect;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmSendFile2Mob }

procedure TdmBkrPslInterface.SendTests2Mob(qrTests: TEDBQuery);
begin
  Screen.Cursor := crHourGlass;
  if Export2Json(qrTests) then
    Save2Json;
  Screen.Cursor := crDefault;
end;

function TdmBkrPslInterface.Export2Json(qrTests: TEDBQuery): Boolean;
var
  Writer: TJsonTextWriter;
begin
  Result := False;

  StrW := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StrW);
  Writer.Formatting := TJsonFormatting.Indented;
  qrTests.DisableControls;

  try
    try
      qrTests.Open;
      Writer.WriteStartArray;
      while not qrTests.Eof do
      begin
        Writer.WriteStartObject;
        Writer.WritePropertyName('test_id');
        Writer.WriteValue(qrTests.FieldByName('Id').AsString);
        Writer.WritePropertyName('test_inspector');
        Writer.WriteValue(qrTests.FieldByName('Oved').AsString);
        Writer.WritePropertyName('car_number');
        Writer.WriteValue(qrTests.FieldByName('Number').AsString);
        Writer.WritePropertyName('car_type');
        Writer.WriteValue(qrTests.FieldByName('Type').AsString);
        Writer.WritePropertyName('test_name');
        Writer.WriteValue(qrTests.FieldByName('Tipul').AsString);
        Writer.WritePropertyName('test_date');
        Writer.WriteValue(qrTests.FieldByName('DateToDo').AsString);
        Writer.WritePropertyName('car_contact');
        Writer.WriteValue(qrTests.FieldByName('Contact').AsString);
        Writer.WritePropertyName('phone');
        Writer.WriteValue(qrTests.FieldByName('Tel').AsString);
        Writer.WritePropertyName('client_name');
        Writer.WriteValue(qrTests.FieldByName('Shem').AsString);
        Writer.WritePropertyName('location');
        Writer.WriteValue(qrTests.FieldByName('Atar').AsString);
        Writer.WriteEndObject;
        qrTests.Next;
      end;
    except on E: Exception do
      HandelError('TdmSendFile2Mob.Export2Json', '���� ����� ���� ������ ����' + #10#13 + E.Message, E);
    end;
  finally
    Writer.WriteEndArray;
    qrTests.EnableControls;
    Writer.Free;
    Result := True;
  end;
end;

procedure TdmBkrPslInterface.Save2Json;
var
  PathAndFileName: string;
  Texts: TStringList;
begin
  PathAndFileName := ExtractFilePath(Application.ExeName)+'JSON/tests.json';
  try
    Texts := TStringList.Create;
    try
      Texts.Add(StrW.ToString);
      Texts.WriteBOM := False;
      Texts.SaveToFile(PathAndFileName, TEncoding.UTF8);
    except on E: Exception do
      HandelError('TdmSendFile2Mob.Save2Json', '���� ������ ���� ������ ' + #10#13 + E.Message, E);
    end;
  finally
    Texts.Free;
    MessageDlg('���� ���� ������ ������ ����', mtInformation, [mbOK], 0);
  end;
end;

procedure TdmBkrPslInterface.GetFileFromMob;
const
//  SourceFile = 'http://nemo4web.net/kochavitmob/uploaded_files/tests.json';
//  DestFile = 'D:\Temp\tests.json';
  WorkingFile = 'D:\My Programs\Kochavit4\JSON\car_inspects.json';
begin
  ReadFromJson;
//  DeleteFile(WorkingFile);
  //  if DownloadFile(SourceFile, DestFile) then
//  else
//    ShowMessage('Error while downloading ' + SourceFile)
end;

function TdmBkrPslInterface.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

procedure TdmBkrPslInterface.ReadFromJson;
var
  TempStr: String;
  sr: TStringReader;
  Jtr: TJsonTextReader;
begin
  TempStr := TFile.ReadAllText('D:\My Programs\Kochavit4\JSON\car_inspects.json');
  try
    sr := TStringReader.Create(TempStr);
    Jtr := TJsonTextReader.Create(sr);
    while Jtr.Read do
    begin
      if Jtr.TokenType = TJsonToken.StartObject then
      begin
        MoveToRecord(Jtr);
        MoveRecord2File;
      end;
    end;
  finally
    Jtr.Free;
    sr.Free;
  end;
end;

procedure TdmBkrPslInterface.MoveToRecord(pJtr: TJsonTextReader);
begin
  while pJtr.Read do
  begin
    if pJtr.TokenType = TJsonToken.PropertyName then
    begin
      if pJtr.Value.ToString = 'test_id' then
      begin
        pJtr.Read;
        CarIns.TestId := pJtr.Value.AsString;
      end
      else if pJtr.Value.ToString = 'inspect_done' then
      begin
        pJtr.Read;
        CarIns.InspectDone := pJtr.Value.AsString;
      end
      else if pJtr.Value.ToString = 'inspect_todo' then
      begin
        pJtr.Read;
        CarIns.InspectTodo := pJtr.Value.AsString;
      end
      else if pJtr.Value.ToString = 'car_km' then
      begin
        pJtr.Read;
        CarIns.CarKm := pJtr.Value.AsString;
      end
      else if pJtr.Value.ToString = 'inspect_remark' then
      begin
        pJtr.Read;
        CarIns.InspectRemark := pJtr.Value.AsString;
        Utf8ToAnsi()
      end
    end
    else if pJtr.TokenType = TJsonToken.EndObject then
      Exit;
  end;
end;

procedure TdmBkrPslInterface.MoveRecord2File;
var
  CarId, TipulId, OvedId: string;
begin
  dmMain.qrGnrl.SQL.Text := 'SELECT CarId, TipulId, OvedId FROM KCrTipul '+
              'WHERE Id = ' + CarIns.TestId;
  dmMain.qrGnrl.Open;
  try
    CarId := dmMain.qrGnrl.FieldByName('CarId').AsString;
    TipulId := dmMain.qrGnrl.FieldByName('TipulId').AsString;
    OvedId := dmMain.qrGnrl.FieldByName('OvedId').AsString;
  finally
    dmMain.qrGnrl.Close;
  end;

  dmMain.qrGnrl.SQL.Text := 'UPDATE KCrTipul SET Km = ' + CarIns.CarKm +
          ', DateDone = DATE ' + QuotedStr(CarIns.InspectDone) +
          ', DateToDo = DATE ' + QuotedStr(CarIns.InspectToDo) +
          ', Remark  = ' + QuotedStr(CarIns.InspectRemark) +
          ' WHERE Id = ' + CarIns.TestId;
  dmMain.qrGnrl.ExecSQL;

  dmMain.qrGnrl.SQL.Text := 'UPDATE KCar SET Spido = ' + CarIns.CarKm +
          ' WHERE Id = ' + CarId;
  dmMain.qrGnrl.ExecSQL;

  dmMain.qrGnrl.SQL.Text := 'INSERT INTO KCrTipulHis '+
          '(CarId, TipulId, OvedId, Km, DateDone, Remark) '+
          'VALUES (' + CarId + ', ' + TipulId + ', ' +  OvedId+ ', ' +
          CarIns.CarKm + ', DATE '+ QuotedStr(CarIns.InspectDone) +
          ', ' +  QuotedStr(CarIns.InspectRemark) + ')';
  dmMain.qrGnrl.ExecSQL;

end;

end.
