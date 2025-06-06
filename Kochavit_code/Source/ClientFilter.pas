unit ClientFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmClientFilter = class(TfrmGnrlFilter)
    lbACod: TLabel;
    lbZCod: TLabel;
    cbCod: TCheckBox;
    edACod: TMaskEdit;
    edZCod: TMaskEdit;
    lbAHp: TLabel;
    lbZHp: TLabel;
    cbHp: TCheckBox;
    edAHp: TMaskEdit;
    edZHp: TMaskEdit;
    lbAOpenDate: TLabel;
    lbZOpenDate: TLabel;
    edAOpenDate: TMaskEdit;
    edZOpenDate: TMaskEdit;
    cbOpenDate: TCheckBox;
    lbEIsuv: TLabel;
    cbIsuv: TCheckBox;
    cbEIsuv: TEdit;
    lbEOved: TLabel;
    cbOved: TCheckBox;
    cbEOved: TComboBox;
    lbADept: TLabel;
    lbZDept: TLabel;
    cbDept: TCheckBox;
    edADept: TMaskEdit;
    edZDept: TMaskEdit;
    cbOfenPay: TCheckBox;
    Label1: TLabel;
    cbEOfenPay: TComboBox;
    cbEFreze: TComboBox;
    cbFreze: TCheckBox;
    lbEFreze: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbCodClick(Sender: TObject);
    procedure edAOpenDateExit(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure cbEOvedEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LoadItemsInComboBox(Sender: TObject; pWhere: String);
  public
    { Public declarations }
  end;

var
  frmClientFilter: TfrmClientFilter;

implementation
uses
  ClientFilterDM, ClientReport, KbFunc;
{$R *.dfm}

procedure TfrmClientFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmClientFilter := TdmClientFilter.Create(Self);
end;

procedure TfrmClientFilter.cbCodClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmClientFilter.LoadItemsInComboBox(Sender: TObject; pWhere: String);
var
  vName: String;
  ListItem: TStringList;
begin
  vName := Copy(TComboBox(Sender).Name, 4, 15);
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmClientFilter.LoadItems('KTbl'+vName, vName, pWhere, ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmClientFilter.cbEOvedEnter(Sender: TObject);
begin
  inherited;
  LoadItemsInComboBox(Sender, '');
end;

procedure TfrmClientFilter.edAOpenDateExit(Sender: TObject);
begin
  inherited;
  if ((Sender as TMaskEdit).Text <> '  /  /    ') and
      (ValidDate((Sender as TMaskEdit).Text) = False) then
    (Sender as TMaskEdit).SetFocus
  else if (Copy((Sender as TMaskEdit).Name, 0, 3) = 'edZ') then
    if (CompareDate(edAOpenDate.Text, edZOpenDate.Text) = False) then
      edAOpenDate.SetFocus;
end;

procedure TfrmClientFilter.btnExecuteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmClientReport) then
  begin
    with dmClientFilter do
    begin
      SetTotalRec('KClient');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\ClientFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'Shem';
      SqlState.GroupBy := 'Cl.Id';
      if OpenData then
        frmClientReport := TfrmClientReport.Create(Self);
    end;
  end;
end;

procedure TfrmClientFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmClientFilter := nil;
end;

end.
