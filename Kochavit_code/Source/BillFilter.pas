unit BillFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DB, StdCtrls, Buttons, ExtCtrls, Mask, DateUtils,
  edbcomps;

type
  TfrmBillFilter = class(TfrmGnrlFilter)
    lbAProduceD: TLabel;
    lbZProduceD: TLabel;
    lbEShem: TLabel;
    edAProduceD: TMaskEdit;
    edZProduceD: TMaskEdit;
    cbProduceD: TCheckBox;
    cbShem: TCheckBox;
    cbEShem: TComboBox;
    lbAToPayD: TLabel;
    lbZToPayD: TLabel;
    edAToPayD: TMaskEdit;
    edZToPayD: TMaskEdit;
    cbToPayD: TCheckBox;
    lbAPaydD: TLabel;
    lbZPaydD: TLabel;
    edAPaydD: TMaskEdit;
    edZPaydD: TMaskEdit;
    cbPaydD: TCheckBox;
    cbReciptNo: TCheckBox;
    lbAReciptNo: TLabel;
    lbZReciptNo: TLabel;
    edAReciptNo: TMaskEdit;
    edZReciptNo: TMaskEdit;
    cbSumA: TCheckBox;
    lbASumA: TLabel;
    lbZSumA: TLabel;
    edASumA: TMaskEdit;
    edZSumA: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsFilter: TDataSource;
    lbEPayd: TLabel;
    cbPayd: TCheckBox;
    cbEPayd: TComboBox;
    lbEOved: TLabel;
    cbOved: TCheckBox;
    cbEOved: TComboBox;
    procedure cbReciptNoClick(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure edAProduceDExit(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbEOvedEnter(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmBillFilter: TfrmBillFilter;

implementation

{$R *.dfm}
uses
  BillFilterDM, BillReport, KbFunc;

procedure TfrmBillFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmBillFilter := TdmBillFilter.Create(Self);
end;

procedure TfrmBillFilter.cbReciptNoClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmBillFilter.cbEShemEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmBillFilter.LoadItems('KClient', 'Shem', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmBillFilter.cbEOvedEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmBillFilter.LoadItems('KTblOved', 'Oved', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmBillFilter.edAProduceDExit(Sender: TObject);
begin
  inherited;
   if ((Sender as TMaskEdit).Text <> '  /  /    ') and
       (ValidDate((Sender as TMaskEdit).Text) = False) then
       (Sender as TMaskEdit).SetFocus;
end;

procedure TfrmBillFilter.btnExecuteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmBillReport) then
  begin
    with dmBillFilter do
    begin
      SetTotalRec('KBill');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\BillFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'ReciptNo';
      if OpenData then
        frmBillReport := TfrmBillReport.Create(Self);
    end;
  end;
end;

procedure TfrmBillFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmBillFilter := nil;
end;

end.
