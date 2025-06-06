unit DownloadWebDataDM;

interface

uses
  Forms, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, edbcomps, edbtype, IdCompressorZLib;

type
  TdmDownloadWebData = class(TDataModule)
    myFtp: TIdFTP;
    fdQuery: TFDQuery;
    fdConnection: TFDConnection;
    fdPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    qrGnrl: TEDBQuery;
    qrGnrl2: TEDBQuery;
    qrGnrl3: TEDBQuery;
    procedure myFtpAfterClientLogin(Sender: TObject);
  private
    AppPath: string;
    zlib: TIdCompressorZLib;
    function ConnectFireDac: Boolean;
    procedure DownloadCarInspects;
    procedure DownloadCarTpl;
    procedure DownloadDrvHtr;
    procedure DownloadDocumentsFiles;
    function FtpConnect: Boolean;
    procedure ShiftToDir(FileName: string);
    procedure DeleteData;
    function RenameIfExists(Dest: string): string;
  public
    procedure ImportDataFromWeb;
  end;

var
  dmDownloadWebData: TdmDownloadWebData;


implementation
uses
  DataDm, DialogsHeb, LogErrorUtil, StrUtils, IOUtils,
  Controls, Dialogs, UITypes;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDownloadWebData }

procedure TdmDownloadWebData.ImportDataFromWeb;
begin
  Screen.Cursor := crHourGlass;
  try
    if ConnectFireDac then
    begin
      DownloadCarInspects;
      DownloadCarTpl;
      DownloadDrvHtr;
      DownloadDocumentsFiles;
      DeleteData;
    end;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      MessageDlgH('...����� ������� ����� ����� ImportDataFromWeb', mtInformation, [mbOk], 0, 0);
    end;
  end;
end;

procedure TdmDownloadWebData.myFtpAfterClientLogin(Sender: TObject);
begin

end;

//  Server=mysql1004.mochahost.com
//  Database=sorinh_kochavit_data
//  User_Name=sorinh_user
//  Password=12345
//  AppPath = public_html/kochavitmob
//** Different users
//  Server=mysql1004.mochahost.com
//  Database=sorinh_kochavit_data_sh
//  User_Name=sorinh_user_sh
//  Password=54321
//  AppPath = public_html/kochavitmob_sh

function TdmDownloadWebData.ConnectFireDac: Boolean;
begin
  Result := False;
  qrGnrl.SQL.Text := 'SELECT Database, DataUserName, DataPassword, Server, AppPath FROM KDefault';

//  frmMain.BitBtn1.Caption := '����� ����� ���';
  try
    qrGnrl.Open;
    with fdConnection.Params do
    begin
      DriverID := 'MySQL';
      Database := qrGnrl.FieldByName('Database').AsString;
      UserName := qrGnrl.FieldByName('DataUserName').Asstring;
      Password := qrGnrl.FieldByName('DataPassword').Asstring;
      Add('Server=' + qrGnrl.FieldByName('Server').Asstring );
      AppPath := qrGnrl.FieldByName('AppPath').Asstring;
    end;
    fdPhysMySQLDriverLink.VendorLib := ExtractFilePath(Application.ExeName) + 'libmysql.dll';
  finally
    qrGnrl.Close;
  end;

  try
    fdConnection.Open();
    Result := True;

    fdQuery.Connection := fdConnection;
    fdQuery.SQL.Text := 'SHOW TABLES LIKE "tbl_tipul"';
    fdQuery.open;

    if fdQuery.isEmpty then



  except on E: Exception do
    HandelError('TdmDownloadWebData.ConnectFireDac', '���� ������ FireDac ���� ��� ����� IP...' + #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.DownloadCarInspects;
var
  TipulId: string;
  Remarks: string;
begin
  qrGnrl.SQL.Text := 'SELECT Id FROM KTblTipul WHERE Tipul = ' + QuotedStr('������ ������');
  try
    qrGnrl.Open;
    TipulId := qrGnrl.FieldByName('Id').AsString;
  finally
    qrGnrl.Close;
  end;

  qrGnrl.SQL.Text := 'UPDATE KCrTipul SET Km = :Km, ' +
          'DateDone = :DateDone, DateToDo = :DateToDo, Remark  = :Remark '+
          'WHERE Id = :TestId';
  qrGnrl.Prepare;
  qrGnrl2.SQL.Text := 'INSERT INTO KCrTipulHis ' +
              '(CarId, TipulId, OvedId, Km, DateDone, Remark) ' +
              'VALUES (:CarId, :TipulId, :OvedId, :CarKm, :DateDone, :Remark)';
  qrGnrl2.Prepare;
  qrGnrl3.SQL.Text := 'UPDATE KCar SET Spido = :Km WHERE Id = :car_id';
  qrGnrl3.Prepare;

  try
    dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
    try
      fdQuery.SQL.Text := 'SELECT * FROM car_inspects';
      try
        fdQuery.Open();
        while not fdQuery.Eof do
        begin
          Remarks := ReplaceStr(fdQuery.FieldByName('inspect_remark').AsString, '\r\n', #13#10);
          qrGnrl.ParamByName('Km').AsInteger := fdQuery.FieldByName('car_km').AsInteger;
          qrGnrl.ParamByName('DateDone').AsDateTime := fdQuery.FieldByName('inspect_done').AsDateTime;
          qrGnrl.ParamByName('DateToDo').AsDateTime := fdQuery.FieldByName('inspect_todo').AsDateTime;
          qrGnrl.ParamByName('Remark').AsString := Remarks;
          qrGnrl.ParamByName('TestId').AsInteger := fdQuery.FieldByName('test_id').AsInteger;
          try
            qrGnrl.ExecSQL;
          except on E: Exception do
            HandelError('TdmDownloadWebData.DownloadCarInspects', '���� ������ ������ ������' + #10#13 + E.Message, E);
          end;


          qrGnrl2.ParamByName('CarId').AsString := fdQuery.FieldByName('car_id').AsString;
          qrGnrl2.ParamByName('TipulId').AsString := TipulId;
          qrGnrl2.ParamByName('OvedId').AsInteger := fdQuery.FieldByName('inspector_id').AsInteger;
          qrGnrl2.ParamByName('CarKm').AsInteger := fdQuery.FieldByName('car_km').AsInteger;
          qrGnrl2.ParamByName('DateDone').AsDateTime := fdQuery.FieldByName('inspect_done').AsDateTime;
          qrGnrl2.ParamByName('Remark').AsString := Remarks;
           try
            qrGnrl2.ExecSQL;
          except on E: Exception do
            HandelError('TdmDownloadWebData.DownloadCarInspects', '���� ������ ��������...' + #10#13 + E.Message, E);
          end;

          if (fdQuery.FieldByName('car_km').AsString <> '') then
          begin
            qrGnrl3.ParamByName('Km').AsInteger := fdQuery.FieldByName('car_km').AsInteger;
            qrGnrl3.ParamByName('car_id').AsInteger := fdQuery.FieldByName('car_id').AsInteger;
            try
              qrGnrl3.ExecSQL;
            except on E: Exception do
              HandelError('TdmDownloadWebData.DownloadCarInspects', '���� ������ �� ���...' + #10#13 + E.Message, E);
            end;
          end;

          fdQuery.Next;
        end;
      finally
        fdQuery.Close;
      end;
      dmData.dbMain.Commit;
      fdQuery.SQL.Text := 'DELETE FROM car_inspects';
      fdQuery.ExecSQL;
    except
      dmData.dbMain.Rollback;
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.DownloadCarInspects', '���� ����� ����� ������ ������...' + #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.DownloadCarTpl;
var
  TplId: Integer;
begin
  qrGnrl.SQL.Text := 'UPDATE KCrTipul ' +
          'SET DateDone = :DateDone, DateToDo = :DateToDo ' +
          'WHERE Id = :Id';
  qrGnrl.Prepare;
  qrGnrl2.SQL.Text := 'INSERT Into KCrTipulHis ' +
          '(CarId, TipulId, OvedId, DateDone) ' +
          'VALUES (:CarId, :TipulId, :OvedId, :DateDone)';
  qrGnrl2.Prepare;

  try
    dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
    try
      fdQuery.SQL.Text := 'SELECT * FROM tpl_done ORDER by tpl_id';
      try
        fdQuery.Open();
        while not fdQuery.Eof do
        begin
          TplId :=  fdQuery.FieldByName('car_tpl_id').AsInteger;
          qrGnrl.ParamByName('DateDone').AsDateTime := fdQuery.FieldByName('tpl_datedone').AsDateTime;
          qrGnrl.ParamByName('DateToDo').AsDateTime := fdQuery.FieldByName('tpl_datetodo').AsDateTime;
          qrGnrl.ParamByName('Id').AsInteger := TplId;
          qrGnrl.ExecSQL;

          qrGnrl3.SQL.Text := 'SELECT CarId, TipulId, Cr.OvedId, DateDone FROM KCrTipul Ct '+
              'LEFT JOIN KCar Cr ON (Ct.CarId = Cr.Id) '+
              'WHERE Id = ' + IntToStr(TplId);
          try
            qrGnrl3.Open();
            if (qrGnrl3.FieldByName('TipulId').AsInteger <> 0) then
            begin
              qrGnrl2.ParamByName('CarId').AsInteger := qrGnrl3.FieldByName('CarId').AsInteger;
              qrGnrl2.ParamByName('TipulId').AsInteger := qrGnrl3.FieldByName('TipulId').AsInteger;
              qrGnrl2.ParamByName('OvedId').AsInteger := qrGnrl3.FieldByName('OvedId').AsInteger;
              qrGnrl2.ParamByName('CarId').AsInteger := qrGnrl3.FieldByName('CarId').AsInteger;
              qrGnrl2.ParamByName('DateDone').AsDateTime := qrGnrl3.FieldByName('DateDone').AsDateTime;
              qrGnrl2.ExecSQL;
            end;
          finally
            qrGnrl3.Close;
          end;

          fdQuery.Next;
        end;
      finally
        fdQuery.Close;
      end;
      dmData.dbMain.Commit;
      fdQuery.SQL.Text := 'DELETE FROM tpl_done';
      fdQuery.ExecSQL;
    except
      dmData.dbMain.Rollback;
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.DownloadCarTpl', '���� ����� ������ ���...' + #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.DownloadDrvHtr;
begin
  qrGnrl.SQL.Text := 'UPDATE KDrHeiter ' +
          'SET DateDone = :DateDone, DateToDo = :DateTodo ' +
          'WHERE Id = :HtrId';
  qrGnrl.Prepare;
  qrGnrl2.SQL.Text := 'INSERT Into KDrHeiterHis ' +
            '(DriverId, HeiterId, DateDone) ' +
            'VALUES (:DriverId, :HeiterId, :DateDone)';
  qrGnrl2.Prepare;

  try
    dmData.dbMain.StartTransaction(EmptyEDBStringsArray);
    try
      fdQuery.SQL.Text := 'SELECT * FROM htr_done ORDER by htr_id';
      try
        fdQuery.Open();
        while not fdQuery.Eof do
        begin
          qrGnrl.ParamByName('DateDone').AsDateTime := fdQuery.FieldByName('htr_datedone').AsDateTime;
          qrGnrl.ParamByName('DateToDo').AsDateTime := fdQuery.FieldByName('htr_datetodo').AsDateTime;
          qrGnrl.ParamByName('HtrId').AsInteger := fdQuery.FieldByName('drv_htr_id').AsInteger;
          qrGnrl.ExecSQL;

          qrGnrl3.SQL.Text := 'SELECT DriverId, HeiterId FROM KDrHeiter WHERE Id = ' +
                  fdQuery.FieldByName('drv_htr_id').AsString;
          try
            qrGnrl3.Open;
            qrGnrl2.ParamByName('DriverId').AsInteger := qrGnrl3.FieldByName('DriverId').AsInteger;
            qrGnrl2.ParamByName('HeiterId').AsInteger := qrGnrl3.FieldByName('HeiterId').AsInteger;
            qrGnrl2.ParamByName('DateDone').AsDateTime := fdQuery.FieldByName('htr_datedone').AsDateTime;
            qrGnrl2.ExecSQL;
          finally
            qrGnrl3.Close;
          end;

          fdQuery.Next;
        end;
      finally
        fdQuery.Close;
      end;
      dmData.dbMain.Commit;
      fdQuery.SQL.Text := 'DELETE FROM htr_done';
      fdQuery.ExecSQL;
    except
      dmData.dbMain.Rollback;
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.DownloadDrvHtr', '���� ����� ����� ���...' + #10#13 + E.Message, E);
  end;
end;

function TdmDownloadWebData.FtpConnect: Boolean;
begin
  Result := False;
  zlib := TIdCompressorZLib.Create(nil);
  try
//    myFtp.Host := 'ftp.nemo4web.net';
//    myFtp.Username := 'sorin@nemo4web.net';
//    myFtp.Password := '71my01don';

    myFtp.Host := 's1103.usc1.mysecurecloudhost.com';
    myFtp.Username := 'sorin@nemo4web.net';
    myFtp.Password := '1~0BkwXM25ts';
    myFtp.Connect;

    myFtp.Compressor := zlib;

    Result := True;
  except on E: Exception do
    HandelError('TdmDownloadWebData.FtpConnect', '������ �� ������ ������ � FTP  ' + #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.DownloadDocumentsFiles;
var
  WebDir, LocalDir: string;
  I: Integer;
  FileName: string;
  Afiles: TStringList;
begin
  try
    try
      if FtpConnect then
      begin
        LocalDir := ExtractFilePath(Application.ExeName) + 'FilesFromWeb\Documents\';
        WebDir := '/km/files_from_web/documents/' + AppPath;
        myFtp.ChangeDir(WebDir);
        myFtp.List('', False);

        for I := 0 to myFtp.DirectoryListing.Count-1 do
        begin
          if (ExtractFileExt(myFtp.DirectoryListing.Items[I].FileName) <> '.') then
          begin
            FileName := myFtp.DirectoryListing.Items[I].FileName;
            myFtp.get(FileName, LocalDir+FileName, True);
            ShiftToDir(FileName);
            myFtp.Delete(FileName);
          end;
        end;
      end;
    finally
      myFtp.Disconnect;
      zlib.Free;
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.DownloadDocumentsFiles', '...���� ����� ������' + #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.ShiftToDir(FileName: string);
var
  I: integer;
  Id, Category, FileNewName, CodPart: string;
  FileSource, FileDest: string;
  SepratorPos, PointPos: Integer;
  DocumentDir, SubDir: string;
begin
//    frmMain.BitBtn1.Caption := '����� ����� FTP';
  try
    SepratorPos := Pos('_', FileName);
    PointPos := Pos('.', FileName);
    CodPart := MidStr(FileName, SepratorPos+1, (PointPos-SepratorPos)-1);
    Category := LeftStr(CodPart, 1);
    Id := RightStr(CodPart, Length(CodPart)-1);
    FileNewName := LeftStr(FileName, SepratorPos-1) +ExtractFileExt(FileName);

    if (Category = 'C') then
    begin
      DocumentDir := ExtractFilePath(Application.ExeName)+'Documents\Car\';
      SubDir := '\';
      if Pos('������ ������', FileName) > 0 then
        SubDir := '\������� �������\'
      else if Pos('������', FileName) > 0 then
        SubDir := '\����� ������\'
      else if Pos('����� ����� �����', FileName) > 0 then
        SubDir := '\����� ����� �����\';

      if not DirectoryExists(DocumentDir+Id+SubDir) then
        ForceDirectories(DocumentDir+Id+SubDir);

      FileDest := RenameIfExists(DocumentDir+Id+SubDir+FileNewName);

//      TFile.Copy(ExtractFilePath(Application.ExeName)+'\FilesFromWeb\Documents\'+FileName,
//          DocumentDir+Id+SubDir+FileNewName, True);
      TFile.Copy(ExtractFilePath(Application.ExeName)+'FilesFromWeb\Documents\'+FileName,
          FileDest, True);
    end
    else if (Category = 'D') then
    begin
      DocumentDir := ExtractFilePath(Application.ExeName)+'\Documents\Driver\';
      if not DirectoryExists(DocumentDir+Id) then
        ForceDirectories(DocumentDir+Id);

      FileDest := RenameIfExists(DocumentDir+Id+'\'+FileNewName);

//        TFile.Copy(ExtractFilePath(Application.ExeName)+'\FilesFromWeb\Documents\'+FileName,
//          DocumentDir+Id+'\'+FileNewName, True);
        TFile.Copy(ExtractFilePath(Application.ExeName)+'\FilesFromWeb\Documents\'+FileName,
          FileDest, True);
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.ShiftToDir', '���� ����� ���� ' +FileName+ #10#13 + E.Message, E);
  end;
end;

function TdmDownloadWebData.RenameIfExists(Dest: string): string;
var
  I: integer;
  FileName, FileExt, FilePath: string;
begin
  Result := Dest;
  I := 1;
  try
    while TFile.Exists(Result) do
    begin
      FileName := ExtractFileName(Dest);
      FileExt := ExtractFileExt(Dest);
      FilePath := ExtractFilePath(Dest);
      Result := FilePath + FileName + '(' + IntToStr(I) + ')' + FileExt;
      I := I+1;
    end;
  except on E: Exception do
    HandelError('TdmDownloadWebData.ShiftToDir', '���� ����� ���� ' +FileName+ #10#13 + E.Message, E);
  end;
end;

procedure TdmDownloadWebData.DeleteData;
begin
//  frmMain.BitBtn1.Caption := '����� ����� ������';
//  try
//    fdQuery.SQL.Text := 'DELETE FROM tpl_done';
//    fdQuery.ExecSQL;
//    fdQuery.SQL.Text := 'DELETE FROM htr_done';
//    fdQuery.ExecSQL;
//    fdQuery.SQL.Text := 'DELETE FROM car_inspects';
//    fdQuery.ExecSQL;
//  except on E: Exception do
//    HandelError('TdmDownloadWebData.DeleteData', '���� ������ ������...' + #10#13 + E.Message, E);
//  end;
end;

end.
