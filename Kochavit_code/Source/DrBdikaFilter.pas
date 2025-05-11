unit DrBdikaFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlFilter, DBTables, DB, StdCtrls, Buttons, ExtCtrls, Mask, edbcomps;

type
  TfrmDrBdikaFilter = class(TfrmGnrlFilter)
    lbABdikaD: TLabel;
    lbZBdikaD: TLabel;
    edABdikaD: TMaskEdit;
    edZBdikaD: TMaskEdit;
    cxDBdikaD: TCheckBox;
    lbEShem: TLabel;
    cxEShem: TCheckBox;
    cbEShem: TComboBox;
    qrFilterId: TIntegerField;
    qrFilterIdDriver: TIntegerField;
    qrFilterBdikaD: TDateField;
    qrFilterBdika: TStringField;
    qrFilterMakom: TStringField;
    qrFilterTipul: TStringField;
    qrFilterShem: TStringField;
    qrFilterShemD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxDBdikaDClick(Sender: TObject);
    procedure edABdikaDExit(Sender: TObject);
    procedure cbEShemEnter(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
  private
    procedure LoadPrfx;
  public
    { Public declarations }
  end;

var
  frmDrBdikaFilter: TfrmDrBdikaFilter;

implementation
uses
   DrBdikaReport, KbFunc;
{$R *.dfm}

procedure TfrmDrBdikaFilter.FormCreate(Sender: TObject);
begin
  inherited;
  totalRec := GetRecNum('KDrBdika');
end;

procedure TfrmDrBdikaFilter.cxDBdikaDClick(Sender: TObject);
begin
  inherited;
  ChkBoxClick(Sender as TCheckBox);
end;

procedure TfrmDrBdikaFilter.edABdikaDExit(Sender: TObject);
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

procedure TfrmDrBdikaFilter.cbEShemEnter(Sender: TObject);
begin
  inherited;
  tbl.TableName := 'KClient';
  ItemsInCmbBox(cbEShem, 'Shem');
end;

procedure TfrmDrBdikaFilter.btnExecuteClick(Sender: TObject);
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
           SQL.LoadFromFile(Path+'DrBdikaSQL.TXT');
           WhereLn := GetWhereLn;
           if (WhereLn = '') then
               SQL[SQL.Count -2] := ''
           else
               SQL[SQL.Count -2] := 'WHERE ' + WhereLn;
           Open;
           selectRec := RecordCount;
       end;
       frmDrBdikaReport := TfrmDrBdikaReport.Create(Self);
   finally
       prfxList.Free;
       Screen.Cursor := crDefault;
   end;
end;

procedure TfrmDrBdikaFilter.LoadPrfx;
begin
  prfxList.Add('Dk.');
  prfxList.Add('Cl.');
end;

end.
