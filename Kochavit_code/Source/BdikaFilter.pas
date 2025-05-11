unit BdikaFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmBdikaFilter = class(TfrmGnrlFilter)
    lbABdikaD: TLabel;
    lbZBdikaD: TLabel;
    edABdikaD: TMaskEdit;
    edZBdikaD: TMaskEdit;
    cbBdikaD: TCheckBox;
    lbEShem: TLabel;
    cbShem: TCheckBox;
    cbEShem: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbBdikaDClick(Sender: TObject);
    procedure edABdikaDExit(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    { Public declarations }
  end;

var
  frmBdikaFilter: TfrmBdikaFilter;

implementation
uses
   BdikaFilterDM, BdikaReport, KbFunc;
{$R *.dfm}

procedure TfrmBdikaFilter.FormCreate(Sender: TObject);
begin
  inherited;
  dmBdikaFilter := TdmBdikaFilter.Create(Self);
end;

procedure TfrmBdikaFilter.cbBdikaDClick(Sender: TObject);
begin
  inherited;
  SetCtrlState(((Sender as TCheckBox).Parent as TGroupBox),
    (Sender as TCheckBox).Checked, (Sender as TCheckBox).Top);
end;

procedure TfrmBdikaFilter.edABdikaDExit(Sender: TObject);
begin
  inherited;
  if ((Sender as TMaskEdit).Text <> '  /  /    ') and
       (ValidDate((Sender as TMaskEdit).Text) = False) then
       (Sender as TMaskEdit).SetFocus
   else if (Copy((Sender as TMaskEdit).Name, 0, 3) = 'edZ') then
       if (CompareDate(edABdikaD.Text,
               edZBdikaD.Text) = False) then
           edABdikaD.SetFocus;
end;

procedure TfrmBdikaFilter.cbEShemEnter(Sender: TObject);
var
  ListItem: TStringList;
begin
  ListItem := TStringList.Create;
  try
    TComboBox(Sender).Clear;
    dmBdikaFilter.LoadItems('KClient', 'Shem', '', ListItem);
    TComboBox(Sender).Items.AddStrings(ListItem);
  finally
    ListItem.Free;
  end;
end;

procedure TfrmBdikaFilter.btnExecuteClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmBdikaReport) then
  begin
    with dmBdikaFilter do
    begin
      SetTotalRec('KDrBdika');
      SqlState.EmptyPropertyes;
      SqlState.SelectAndFrom.LoadFromFile(ExtractFilePath(Application.ExeName)+
          'SQL\BdikaFilter.SQL');
      SqlState.SplitHeader;
      SqlState.Where := GetWhereState;
      SqlState.Order := 'BdikaD';
      if OpenData then
        frmBdikaReport := TfrmBdikaReport.Create(Self);
    end;
  end;
end;

procedure TfrmBdikaFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmBdikaFilter := nil;
end;

end.
