unit DataDM;

interface

uses
  SysUtils, Classes, Forms, edbcomps, DB, frxChart, frxClass, frxExportPDF,
  frxExportText, frxExportImage, frxExportRTF, frxExportHTML,
  frxExportBaseDialog;

type
  TdmData = class(TDataModule)
    sesMain: TEDBSession;
    engMain: TEDBEngine;
    ConfigurationQuery: TEDBQuery;
    dbMain: TEDBDatabase;
    qrGnrl: TEDBQuery;
    dbMainBig: TEDBDatabase;
    spGnrl: TEDBStoredProc;
    frxReport: TfrxReport;
    frxChartObject: TfrxChartObject;
    frxPDFExport: TfrxPDFExport;
    frxHTMLExport: TfrxHTMLExport;
    frxRTFExport: TfrxRTFExport;
    frxJPEGExport: TfrxJPEGExport;
    frxSimpleTextExport: TfrxSimpleTextExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure dbMainAfterConnect(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    function  GetMode: String;
    function  GetAddressIp: String;
    function  GetHostName: String;
    procedure SetUpDBPath(pDatabase, pPathWanted: string);
  public
    function GetId(pTbl, pFld, pVal: String): String;
  end;

var
  dmData: TdmData;

implementation
{$R *.dfm}
uses
  LogErrorUtil, IniFiles;

{ TdmMain }

procedure TdmData.DataModuleCreate(Sender: TObject);
var
  Mode: string;
begin
  Mode := GetMode;
  if (Mode = 'FS') then
    sesMain.SessionType := stLocal
  else if (Mode = 'CS') then
  begin
    sesMain.SessionType := stRemote;
    sesMain.RemoteAddress := GetAddressIp;
  end
  else if (Mode = 'CSDNS') then
  begin
    sesMain.SessionType := stRemote;
    sesMain.RemoteHost := GetHostName;
  end;

  engMain.ConfigPath := ExtractFilePath(ParamStr(0));
  engMain.TempTablesPath := engMain.GetTempTablesPath;
  engMain.Active := True;
  sesMain.Connected := True;
  SetUpDBPath('Kb', String(engMain.ConfigPath+'Data'));
  SetUpDBPath('KbBig', String(engMain.ConfigPath+'DataBig'));
end;

function TdmData.GetMode: String;
var
  FIni: TIniFile;
begin
  FIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'TextFiles\Kochavit.Ini');
  try
    Result := FIni.ReadString('Main', 'Mode', 'FS');
  finally
    FIni.Free;
  end;
end;

function TdmData.GetAddressIp: String;
var
  FIni: TIniFile;
begin
  FIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'TextFiles\Kochavit.Ini');
  try
    Result := FIni.ReadString('Main', 'AddressIP', '');
  finally
    FIni.Free;
  end;
end;

function TdmData.GetHostName: String;
var
  FIni: TIniFile;
begin
  FIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'TextFiles\Kochavit.Ini');
  try
    Result := FIni.ReadString('Main', 'HostName', '');
  finally
    FIni.Free;
  end;
end;

procedure TdmData.SetUpDBPath(pDatabase, pPathWanted: string);
begin
  try
    ConfigurationQuery.SQL.Text := 'SELECT Path FROM Databases WHERE Name = ' +
        QuotedStr(pDatabase);
    ConfigurationQuery.Open;
    if LowerCase(ConfigurationQuery.FieldByName('Path').AsString) <>
                                  LowerCase(pPathWanted) then
    begin
      ConfigurationQuery.Close;
      ConfigurationQuery.SQL.Text := 'ALTER DATABASE ' + pDatabase +
            ' PATH '+ QuotedStr(pPathWanted);
      ConfigurationQuery.ExecSQL;
    end;
    ConfigurationQuery.Close;
  except
    on E: EDatabaseError do
    begin
      HandelError('TdmData.SetUpDBPath', 'אין קישור לנתונים...'+ #10#13 + E.Message, E);
      Self.Destroy;
    end;
  end;
end;

procedure TdmData.dbMainAfterConnect(Sender: TObject);
begin
  try
    spGnrl.StoredProcName := 'UpdateFreze';
    spGnrl.ExecProc;
    spGnrl.StoredProcName := 'SetDebit';
    spGnrl.ExecProc;
  except
//    on E:Exception do
//      HandelError('TdmData.dbMainAfterConnect', 'תקלה בריצת עדכונים כללים...'+ #10#13 + E.Message, E);
  end;
end;

function TdmData.GetId(pTbl, pFld, pVal: String): String;
begin
  Result := '';
  qrGnrl.SQL.Text := 'SELECT Id FROM ' + pTbl +
              ' WHERE ' + pFld + ' = ' + QuotedStr(pVal);
  try
    qrGnrl.Open;
    Result := qrGnrl.FieldByName('Id').AsString;
  finally
    qrGnrl.Close;
  end;
end;

procedure TdmData.DataModuleDestroy(Sender: TObject);
begin
  engMain.Close;
end;

end.
