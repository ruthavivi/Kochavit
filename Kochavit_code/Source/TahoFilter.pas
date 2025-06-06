unit TahoFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmTahoFilter = class(TfrmGnrlFilter)
    lbAMoed: TLabel;
    lbZMoed: TLabel;
    edAMoed: TMaskEdit;
    edZMoed: TMaskEdit;
    cbMoed: TCheckBox;
    lbEShemD: TLabel;
    cbShemD: TCheckBox;
    cbEShemD: TComboBox;
    lbEShem: TLabel;
    cbShem: TCheckBox;
    cbEShem: TComboBox;
    lbENumber: TLabel;
    cbNumber: TCheckBox;
    cbENumber: TComboBox;
    cbSpeed: TCheckBox;
    Label1: TLabel;
    cbESpeed: TComboBox;
    cbZman: TCheckBox;
    Label2: TLabel;
    cbEZman: TComboBox;
    cbHarig: TCheckBox;
    Label3: TLabel;
    cbEHarig: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbMoedClick(Sender: TObject);
    procedure edAMoedExit(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure cbENumberEnter(Sender: TObject);
    procedure cbEShemDEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  frmTahoFilter: TfrmTahoFilter;

implementation
uses
  TahoFilterDM, TahoReport, KbFunc;
{$R *.dfm}

procedure TfrmTahoFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmTahoFilter := TdmTahoFilter.Create(Self);
end;

procedure TfrmTahoFilter.cbMoedClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmTahoFilter.edAMoedExit(Sender: TObject);
begin
  inherited;
  if ((Sender as TMaskEdit).Text <> '  /  /    ') and
       (ValidDate((Sender as TMaskEdit).Text) = False) then
       (Sender as TMaskEdit).SetFocus
   else if (Copy((Sender as TMaskEdit).Name, 0, 3) = 'edZ') then
       if (CompareDate(edAMoed.Text,
               edZMoed.Text) = False) then
           edAMoed.SetFocus;
end;

procedure TfrmTahoFilter.cbEShemEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTahoFilter.LoadItems('KClient', 'Shem', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTahoFilter.cbENumberEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTahoFilter.LoadItems('KCar', 'Number', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTahoFilter.cbEShemDEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTahoFilter.LoadItems('KDriver', 'ShemD', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTahoFilter.btnExecuteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmTahoReport) then
  begin
    with dmTahoFilter do
    begin
      SetTotalRec('KDrTaho');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\TahoFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'Moed';
      if OpenData then
        frmTahoReport := TfrmTahoReport.Create(Self);
    end;
  end;
end;

procedure TfrmTahoFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmTahoFilter := nil;
end;

end.
