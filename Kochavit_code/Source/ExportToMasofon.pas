unit ExportToMasofon;

interface

uses
  SysUtils, Classes, DB, edbcomps;

type
  TdmExportToMasofon = class(TDataModule)
    qrExport: TEDBQuery;
  private
    procedure ExpClient;
    procedure ExpCar;
    procedure ExpDriver;
    procedure ExpCarDriver;
    procedure ExpCarWarnings;
    procedure ExpCarTipulim;
    procedure ExpCarTeunot;
    procedure ExpCarTipulimKlali;
    procedure ExpCarSihot;
    procedure ExpDrvHeiterim;
    procedure ExpDrvTahograph;
    procedure ExpDrvTeunot;
    procedure ExpDrvAverot;
    procedure ExpDrvCoursim;
    procedure ExpDrvBdikot;
    procedure ExpDrvSihot;
    procedure ExpBikorot;
  public
    procedure ExportData;
  end;

var
  dmExportToMasofon: TdmExportToMasofon;

implementation
uses
  ExportToExcel, Forms, Dialogs;

{$R *.dfm}

procedure TdmExportToMasofon.ExportData;
begin
  ExpClient;
  ExpCar;
  ExpDriver;
  ExpCarDriver;
  ExpCarWarnings;
  ExpCarTipulim;
  ExpCarTeunot;
  ExpCarTipulimKlali;
  ExpCarSihot;
  ExpDrvHeiterim;
  ExpDrvTahograph;
  ExpDrvTeunot;
  ExpDrvAverot;
  ExpDrvCoursim;
  ExpDrvBdikot;
  ExpDrvSihot;
  ExpBikorot;
  MessageDlg('...סיום הפקת קבצים למסופון',
          mtInformation, [mbOK], 0);
end;

procedure TdmExportToMasofon.ExpClient;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\Clients.xls';
  qrExport.SQL.Text := 'SELECT Id, Hp, Shem, Tel1, Tel2, Contact, TelC, Oved, EMail ' +
              'FROM KClient Cl LEFT JOIN KTblOved tV ON (Cl.OvedId = tV.Id)'+
              ' WHERE Pail = True AND (Freze = False OR Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCar;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\Cars.xls';
  qrExport.SQL.Text := 'SELECT Id, ClientId, Number, Model, ShildaN, WeightT, Contact, Tel, CodSecure, Type, Spido, Atar, Oved '+
          'FROM KCar  LEFT JOIN KTblType tT ON TypeId = tT.Id '+
          'LEFT JOIN KTblAtar tA ON AtarId = tA.Id ' +
          'LEFT JOIN KTblOved tV ON OvedId = tV.Id' +
          ' WHERE Pail = True AND (Freze = False OR Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDriver;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\Drivers.xls';
  qrExport.SQL.Text := 'SELECT Id, ClientId, ShemD, Zeut, LicenceTyp, LicenceNum, Limit ' +
                       'FROM KDriver WHERE Pail = True AND (Freze = False OR Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarDriver;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriversToCar.xls';
  qrExport.SQL.Text := 'SELECT CarId, DriverId ' +
                       'FROM KCrDrv';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarWarnings;
var
  FileName, DateLimit: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\CarWarnings.xls';
  DateLimit := FormatDateTime('yyyy-mm-dd', IncMonth(Date));
  qrExport.SQL.Text := 'SELECT CarId, Tipul, DateToDo, Number, Contact, Tel, Oved, Atar ' +
              'FROM KCrTipul CT LEFT JOIN KCar CR ON CT.CarId = CR.Id '+
              'LEFT JOIN KTblTipul tT ON CT.TipulId = tT.Id '+
              'LEFT JOIN KTblOved tV ON CR.OvedId = tV.Id ' +
              'LEFT JOIN KTblAtar tA ON CR.AtarId = tA.Id ' +
              'WHERE DateToDo <= DATE ' + QuotedStr(DateLimit) + ' AND Cr.Pail = True AND (Cr.Freze = False OR Cr.Freze IS NULL)'+
              ' ORDER BY DateToDo';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarTipulim;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\CarTipulim.xls';
  qrExport.SQL.Text := 'SELECT Id, CarId, Tipul, DateDone, DateToDo, Remark ' +
              'FROM KCrTipul CT LEFT JOIN KTblTipul tT ON CT.TipulId = tT.Id ' +
              'LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id'+
              ' WHERE Cr.Pail = True AND (Cr.Freze = False OR Cr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarTeunot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\CarTeunot.xls';
  qrExport.SQL.Text := 'SELECT Id, CarId, AcdntD, Descrpt, Status '+
                'FROM KCrAcdnt Ca ' +
                'LEFT JOIN KCar Cr ON Ca.CarId = Cr.Id'+
                ' WHERE Cr.Pail = True AND (Cr.Freze = False OR Cr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarTipulimKlali;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\CarTipulimKlali.xls';
  qrExport.SQL.Text := 'SELECT Id, CarId, Moed, TipulOut, Musah, Remark ' +
            'FROM KCrTipulOut CT LEFT JOIN KTblTipulOut tU ON (CT.TipulOutId = tU.Id) ' +
            'LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id'+
            ' WHERE Cr.Pail = True AND (Cr.Freze = False OR Cr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpCarSihot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\CarSihot.xls';
  qrExport.SQL.Text := 'SELECT Id, CarId, Moed, Sha, Remark ' +
                       'FROM KCrFollow Cf ' +
                       'LEFT JOIN KCar Cr ON Cf.CarId = Cr.Id'+
                       ' WHERE Cr.Pail = True AND (Cr.Freze = False OR Cr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvHeiterim;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverHeiterim.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, Heiter, DateDone, DateToDo, Remark ' +
              'FROM KDrHeiter Dh LEFT JOIN KTblHeiter tH ON (Dh.HeiterId = tH.Id) ' +
              'LEFT JOIN KDriver Dr ON Dh.DriverId = Dr.Id'+
              ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvTahograph;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverTahograph.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, CarId, Moed, Speed, Zman, Harig, Remark ' +
              'FROM KDrTaho Dt '+
              'LEFT JOIN KDriver Dr ON Dt.DriverId = Dr.Id '+
              ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvTeunot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverTeunot.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, CarId, AcdntD, WithInjr, Quilty, Tipul ' +
                'FROM KDrAcdnt Da '+
                'LEFT JOIN KDriver Dr ON Da.DriverId = Dr.Id'+
                ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvAverot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverAverot.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, AviraD, Descrpt, DohNum, Tipul ' +
                       'FROM KDrAvira Da '+
                       'LEFT JOIN KDriver Dr ON Da.DriverId = Dr.Id'+
                       ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvCoursim;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverCoursim.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, Course, Organize, StartD, EndD ' +
            'FROM KDrCourse Dc LEFT JOIN KTblCourse tC ON (Dc.CourseId = tC.Id) '+
            'LEFT JOIN KDriver Dr ON Dc.DriverId = Dr.Id'+
              ' WHERE Dr.Freze = False OR Dr.Freze IS NULL';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvBdikot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverBdikot.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, BdikaD, Bdika, Makom, Tipul ' +
                       'FROM KDrBdika Db ' +
                       'LEFT JOIN KDriver Dr ON Db.DriverId = Dr.Id'+
              ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpDrvSihot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\DriverSihot.xls';
  qrExport.SQL.Text := 'SELECT Id, DriverId, Moed, Sha, Remark ' +
                       'FROM KDrFollow Df ' +
                       'LEFT JOIN KDriver Dr ON Df.DriverId = Dr.Id'+
              ' WHERE Dr.Pail = True AND (Dr.Freze = False OR Dr.Freze IS NULL)';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

procedure TdmExportToMasofon.ExpBikorot;
var
  FileName: String;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'ExportFiles\Bikorot.xls';
  qrExport.SQL.Text := 'SELECT Bk.ID, Bikoret, Bl.ID AS IdBikoretDtl, BikoretDtl ' +
            'FROM KTblBikoret Bk LEFT JOIN KTblBikoretDtl Bl ON Bk.Id = Bl.IdBikoret';
  frmExportToExcel := TfrmExportToExcel.Create(Self);
  try
    qrExport.Open;
    frmExportToExcel.SendToExcelFile(qrExport, FileName);
  finally
    qrExport.Close;
  end;
end;

end.
