unit DriverOnCarFilter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GnrlFilter, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmDriverOnCarFilter = class(TfrmGnrlFilter)
    cbShemD: TCheckBox;
    cbEShemD: TComboBox;
    lbEShemD: TLabel;
    cbZeut: TCheckBox;
    cbEZeut: TComboBox;
    lbEZeut: TLabel;
    cbLicence: TCheckBox;
    cbELicence: TComboBox;
    lbELicence: TLabel;
    cbType: TCheckBox;
    cbEType: TComboBox;
    lbEType: TLabel;
    cbEShem: TComboBox;
    lbEShem: TLabel;
    cbShem: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cbEShemDEnter(Sender: TObject);
    procedure cbEZeutEnter(Sender: TObject);
    procedure cbELicenceEnter(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbShemDClick(Sender: TObject);
  private
    procedure LoadItemsInComboBox(Sender: TObject; pWhere: String);
  public
    { Public declarations }
  end;

var
  frmDriverOnCarFilter: TfrmDriverOnCarFilter;

implementation
uses
   DriverOnCarFilterDM, DriverOnCarReport, KbFunc;
{$R *.dfm}

procedure TfrmDriverOnCarFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmDriverOnCarFilter := TdmDriverOnCarFilter.Create(Self);
end;

procedure TfrmDriverOnCarFilter.cbShemDClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmDriverOnCarFilter.LoadItemsInComboBox(Sender: TObject;
  pWhere: String);
var
  vName: String;
  ListItem: TStringList;
begin
  vName := Copy(TComboBox(Sender).Name, 4, 15);
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmDriverOnCarFilter.LoadItems('KTbl'+vName, vName, pWhere, ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmDriverOnCarFilter.cbELicenceEnter(Sender: TObject);
begin
  inherited;
  LoadItemsInComboBox(Sender, '');
end;

procedure TfrmDriverOnCarFilter.cbEShemDEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmDriverOnCarFilter.LoadItems('KDriver', 'ShemD', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmDriverOnCarFilter.cbEZeutEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmDriverOnCarFilter.LoadItems('KDriver', 'Zeut', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmDriverOnCarFilter.cbEShemEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmDriverOnCarFilter.LoadItems('KClient', 'Shem', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmDriverOnCarFilter.btnExecuteClick(Sender: TObject);
begin
  if not Assigned(frmDriverOnCarReport) then
  begin
    with dmDriverOnCarFilter do
    begin
      SetTotalRec('KCrDrv');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\DriverOnCarFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'ShemD';
      if OpenData then
        frmDriverOnCarReport := TfrmDriverOnCarReport.Create(Self);
    end;
  end;
end;

procedure TfrmDriverOnCarFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmDriverOnCarFilter := nil;
end;

end.
