unit ExportFilesDM;

interface

uses
  System.SysUtils, System.Classes, System.StrUtils, Forms, Data.DB, edbcomps;

type
  TdmExportFiles = class(TDataModule)
    qrGnrl: TEDBQuery;
  private
    fDate, pDate: String;
    procedure CreateStore;
    procedure ExportCarWrn;
    procedure ExportDrvWrn;
  public
    procedure Run(pdtFDate, pdtPDate: TDate);
  end;

var
  dmExportFiles: TdmExportFiles;

implementation
uses
  DataDM, MainDM;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmExportFiles }

procedure TdmExportFiles.Run(pdtFDate, pdtPDate: TDate);
begin
  fDate := 'DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pdtFDate));
  pDate := 'DATE ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pdtPDate));
  CreateStore;
  ExportCarWrn;
  ExportDrvWrn;
end;

procedure TdmExportFiles.CreateStore;
begin
  dmData.ConfigurationQuery.SQL.Text := 'SELECT Name FROM Stores ' +
      'WHERE Name = ' + QuotedStr('Export2Lola');
  dmData.ConfigurationQuery.Open;
  if dmData.ConfigurationQuery.IsEmpty then
  begin
    qrGnrl.SQL.Text := 'CREATE STORE "Export2Lola" AS ' +
      'LOCAL PATH ' + QuotedStr(ExtractFilePath(Application.ExeName)+'Export2Lola');
    qrGnrl.ExecSQL;
  end;
  dmData.ConfigurationQuery.Close;
end;

procedure TdmExportFiles.ExportCarWrn;
begin
  qrGnrl.SQL.Assign(dmMain.qrWrnCar.SQL);
  qrGnrl.SQL.Insert(0, 'CREATE VIEW "Temp" AS ');
  qrGnrl.SQL.Text := ReplaceText(qrGnrl.SQL.Text, ':prmDateF', fDate);
  qrGnrl.SQL.Text := ReplaceText(qrGnrl.SQL.Text, ':prmDateP', pDate);
  qrGnrl.ExecSQL;

  qrGnrl.SQL.Text := 'EXPORT TABLE "Temp" TO "vehiclesFile.csv" ' +
      'IN STORE "Export2Lola" QUOTE CHAR #0';
  qrGnrl.ExecSQL;
  qrGnrl.SQL.Text := 'DROP VIEW "Temp"';
  qrGnrl.ExecSQL;
end;

procedure TdmExportFiles.ExportDrvWrn;
begin

end;


end.

