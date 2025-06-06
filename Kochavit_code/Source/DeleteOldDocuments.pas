unit   DeleteOldDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.IOUtils, DateUtils,
  System.Types, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, edbcomps;

type
  TfrmDeleteOldDocuments = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnCancel: TBitBtn;
    btnOk: TBitBtn;
    rgOptions: TRadioGroup;
    edTillMoed: TMaskEdit;
    qrBigFolder: TEDBQuery;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    TillDate: TDate;
    procedure DeleteDirDocuments(pPath: String);
    procedure LoopOnDirectorys(pMainPath: String);
    procedure DeleteFromData;
    procedure OptimizeData;
  public
    { Public declarations }
  end;

var
  frmDeleteOldDocuments: TfrmDeleteOldDocuments;

implementation
uses
  DialogsHeb;

{$R *.dfm}

{ TfrmDeleteOldDocuments }


procedure TfrmDeleteOldDocuments.btnOkClick(Sender: TObject);
var
  MainPath: String;
begin
  Self.Cursor := crHourGlass;
  MainPath := ExtractFileDir(Application.ExeName) + '\Documents';

  try
    if rgOptions.ItemIndex = 0 then
    begin
      TillDate := IncYear(Now, -7);
      LoopOnDirectorys(MainPath);
      DeleteFromData;
      OptimizeData;
    end
    else if rgOptions.ItemIndex = 1 then
    begin
        if CompareDate(IncYear(Now, -1), StrToDate(edTillMoed.Text)) = LessThanValue then
          MessageDlgH('�� ���� ���� ������ ��� ���� � 5 ����', mtError, [mbOk], 0, 0)
        else
        begin
          TillDate := StrToDate(edTillMoed.Text);
          LoopOnDirectorys(MainPath);
          DeleteFromData;
          OptimizeData;
        end;
    end;
    ShowMessage('...����� ����� ������ ����� ������');
  finally
    Self.Cursor :=  crDefault;
    Close;
  end;
end;

procedure TfrmDeleteOldDocuments.LoopOnDirectorys(pMainPath: String);
var
  Directories: TStringDynArray;
  i: Integer;
begin
  Directories := TDirectory.GetDirectories(pMainPath + '\Car');
  for I := 0 to Length(Directories)-1 do
    DeleteDirDocuments(Directories[i]);
  Directories := TDirectory.GetDirectories(pMainPath + '\Driver');
  for I := 0 to Length(Directories)-1 do
    DeleteDirDocuments(Directories[i]);
  Directories := TDirectory.GetDirectories(pMainPath + '\Client');
  for I := 0 to Length(Directories)-1 do
    DeleteDirDocuments(Directories[i]);
end;

function FileTimeToDateTime(const FileTime: TFileTime): TDateTime;
var
  LocalFileTime: TFileTime;
  SystemTime: TSystemTime;
begin
  FileTimeToLocalFileTime(FileTime, LocalFileTime);
  FileTimeToSystemTime(LocalFileTime, SystemTime);
  Result := SystemTimeToDateTime(SystemTime);
end;

procedure TfrmDeleteOldDocuments.DeleteDirDocuments(pPath: String);
var
  Files: TstringDynArray;
  Filter: TDirectory.TFilterPredicate;
  i: Integer;
begin
  Filter := function(const pPath: string; const SearchRec: TSearchRec): Boolean
            var
              DT: TDateTime;
            begin
              DT := FileTimeToDateTime(SearchRec.FindData.ftLastWriteTime);
              Result := (DT <= TillDate);
            end;
  Files := TDirectory.GetFiles(pPath, Filter);
  for I := 0 to Length(Files)-1 do
    DeleteFile(Files[i]);
end;

procedure TfrmDeleteOldDocuments.DeleteFromData;
begin
  qrBigFolder.SQL.Text := 'DELETE FROM KClTofes WHERE Moed <= DATE '+
      QuotedStr(FormatDateTime('yyyy-mm-dd', TillDate));
  qrBigFolder.ExecSQL;
  qrBigFolder.SQL.Text := 'DELETE FROM KCrTofes WHERE Moed <= DATE '+
      QuotedStr(FormatDateTime('yyyy-mm-dd', TillDate));
  qrBigFolder.ExecSQL;
  qrBigFolder.SQL.Text := 'DELETE FROM KDrTofes WHERE Moed <= DATE '+
      QuotedStr(FormatDateTime('yyyy-mm-dd', TillDate));
  qrBigFolder.ExecSQL;
end;

procedure TfrmDeleteOldDocuments.OptimizeData;
begin
  qrBigFolder.SQL.Text := 'OPTIMIZE TABLE KClTofes';
  qrBigFolder.ExecSQL;
  qrBigFolder.SQL.Text := 'OPTIMIZE TABLE KCrTofes';
  qrBigFolder.ExecSQL;
  qrBigFolder.SQL.Text := 'OPTIMIZE TABLE KDrTofes';
  qrBigFolder.ExecSQL;
end;

procedure TfrmDeleteOldDocuments.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
