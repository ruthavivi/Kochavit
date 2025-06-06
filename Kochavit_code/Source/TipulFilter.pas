unit TipulFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmTipulFilter = class(TfrmGnrlFilter)
    lbADateDone: TLabel;
    lbZDateDone: TLabel;
    edADateDone: TMaskEdit;
    edZDateDone: TMaskEdit;
    cbDateDone: TCheckBox;
    lbENumber: TLabel;
    cbNumber: TCheckBox;
    cbENumber: TComboBox;
    lbETipul: TLabel;
    cbTipul: TCheckBox;
    cbETipul: TComboBox;
    lbEOved: TLabel;
    cbOved: TCheckBox;
    cbEOved: TComboBox;
    lbEType: TLabel;
    cbType: TCheckBox;
    cbEType: TComboBox;
    lbEProducer: TLabel;
    cbProducer: TCheckBox;
    cbEProducer: TComboBox;
    cbNoBkr: TCheckBox;
    lbANoBkr: TLabel;
    lbZNoBkr: TLabel;
    edANoBkr: TMaskEdit;
    edZNoBkr: TMaskEdit;
    cbEShem: TComboBox;
    lbEShem: TLabel;
    cbShem: TCheckBox;
    procedure cbDateDoneClick(Sender: TObject);
    procedure cbENumberEnter(Sender: TObject);
    procedure edADateDoneExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbETipulEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LoadItemsInComboBox(Sender: TObject; pWhere: String);

//    function GetLastKm(pId, pCarId: String): Integer;
  public
    { Public declarations }
  end;

var
  frmTipulFilter: TfrmTipulFilter;

implementation

{$R *.dfm}
uses
   TipulFilterDM, TipulReport, KbFunc;

procedure TfrmTipulFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmTipulFilter := TdmTipulFilter.Create(Self);
end;

procedure TfrmTipulFilter.cbDateDoneClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmTipulFilter.edADateDoneExit(Sender: TObject);
begin
  inherited;
   if ((Sender as TMaskEdit).Text <> '  /  /    ') and
       (ValidDate((Sender as TMaskEdit).Text) = False) then
       (Sender as TMaskEdit).SetFocus
   else if (Copy((Sender as TMaskEdit).Name, 0, 3) = 'edZ') then
       if (CompareDate(edADateDone.Text,
               edZDateDone.Text) = False) then
           edADateDone.SetFocus;
end;

procedure TfrmTipulFilter.LoadItemsInComboBox(Sender: TObject; pWhere: String);
var
  vName: String;
  ListItem: TStringList;
begin
  vName := Copy(TComboBox(Sender).Name, 4, 15);
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTipulFilter.LoadItems('KTbl'+vName, vName, pWhere, ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTipulFilter.cbENumberEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTipulFilter.LoadItems('KCar', 'Number', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTipulFilter.cbEShemEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmTipulFilter.LoadItems('KClient', 'Shem', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmTipulFilter.cbETipulEnter(Sender: TObject);
begin
  inherited;
  LoadItemsInComboBox(Sender, '');
end;

procedure TfrmTipulFilter.btnExecuteClick(Sender: TObject);
begin
  if not Assigned(frmTipulReport) then
  begin
    with dmTipulFilter do
    begin
      SetTotalRec('KCrTipulHis');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\TipulFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'DateDone';
      if OpenData then
      begin
        qrDtl.Open;
        frmTipulReport := TfrmTipulReport.Create(Self);
      end;
    end;
  end;
end;

procedure TfrmTipulFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmTipulFilter := nil;
end;

end.
