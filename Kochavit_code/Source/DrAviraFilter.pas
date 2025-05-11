unit DrAviraFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DBTables, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmDrAviraFilter = class(TfrmGnrlFilter)
    lbAAviraD: TLabel;
    lbZAviraZ: TLabel;
    edAAviraD: TMaskEdit;
    edZAviraD: TMaskEdit;
    cbAviraD: TCheckBox;
    lbEShem: TLabel;
    cbShem: TCheckBox;
    cbEShem: TComboBox;
    qrFilterId: TIntegerField;
    qrFilterIdDriver: TIntegerField;
    qrFilterAviraD: TDateField;
    qrFilterDescrpt: TStringField;
    qrFilterTipul: TStringField;
    qrFilterShem: TStringField;
    qrFilterShemD: TStringField;
    qrFilterDohNum: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cbAviraDClick(Sender: TObject);
    procedure edAAviraDExit(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
  private
    procedure LoadPrfx;
  public
    { Public declarations }
  end;

var
  frmDrAviraFilter: TfrmDrAviraFilter;

implementation
uses
   DrAviraReport, KbFunc;
{$R *.dfm}

procedure TfrmDrAviraFilter.FormCreate(Sender: TObject);
begin
  inherited;
  totalRec := GetRecNum('KDrAvira');
end;

procedure TfrmDrAviraFilter.cbAviraDClick(Sender: TObject);
begin
  inherited;
  ChkBoxClick(Sender as TCheckBox);
end;

procedure TfrmDrAviraFilter.edAAviraDExit(Sender: TObject);
begin
  inherited;
  if ((Sender as TMaskEdit).Text <> '  /  /    ') and
       (ValidDate((Sender as TMaskEdit).Text) = False) then
       (Sender as TMaskEdit).SetFocus
   else if (Copy((Sender as TMaskEdit).Name, 0, 3) = 'edZ') then
       if (CompareDate(edAAviraD.Text,
               edZAviraD.Text) = False) then
           edAAviraD.SetFocus;
end;

procedure TfrmDrAviraFilter.cbEShemEnter(Sender: TObject);
begin
  inherited;
  tbl.TableName := 'KClient';
  ItemsInCmbBox(cbEShem, 'Shem');
end;

procedure TfrmDrAviraFilter.btnExecuteClick(Sender: TObject);
var
   Path, WhereLn: String;
begin
  inherited;
   Screen.Cursor := crHourGlass;
   Path :=  ExtractFilePath(Application.ExeName) + 'SQL\';
   prfxList := TStringList.Create;
   try
       LoadPrfx;
       with qrFilter do
       begin
           SQL.LoadFromFile(Path+'DrAviraSQL.TXT');
           WhereLn := GetWhereLn;
           if (WhereLn = '') then
               SQL[SQL.Count -2] := ''
           else
               SQL[SQL.Count -2] := 'WHERE ' + WhereLn;
           Open;
           selectRec := RecordCount;
       end;
       frmDrAviraReport := TfrmDrAviraReport.Create(Self);
   finally
       prfxList.Free;
       Screen.Cursor := crDefault;
   end;
end;

procedure TfrmDrAviraFilter.LoadPrfx;
begin
  prfxList.Add('Da.');
  prfxList.Add('Cl.');
end;

end.
