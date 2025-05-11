unit SlctFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB;

type
  TfrmSlctFields = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    Panel2: TPanel;
    btnClose: TBitBtn;
    btnOk: TBitBtn;
    Panel3: TPanel;
    lbSelect: TListBox;
    lbUnSelect: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    btnUnSelect: TSpeedButton;
    btnSelect: TSpeedButton;
    procedure btnUnSelectClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    Data: TDataSet;
    Path, SlctList, UnSlctList: String;
    procedure LoadData(pData: TDataSet);
  public
    procedure LoadSelected(pData: TDataSet);
    procedure LoadLists(pModul: String; pData: TDataSet);
  end;

var
  frmSlctFields: TfrmSlctFields;

implementation

{$R *.dfm}

{ TfrmSlctFields }

procedure TfrmSlctFields.LoadLists(pModul: String; pData: TDataSet);
begin
  Data := pData;
  Path := ExtractFilePath(Application.ExeName) + 'Txt\';
  SlctList := pModul + 'List.Txt';
  UnSlctList := 'Un' + pModul + 'List.Txt';
  if FileExists(Path + SlctList) then
  begin
    lbSelect.Items.LoadFromFile(Path + SlctList);
    lbUnSelect.Items.LoadFromFile(Path + UnSlctList);
  end
  else
    LoadData(pData);
end;

procedure TfrmSlctFields.LoadData(pData: TDataSet);
var
  i: Integer;
begin
  for i := 0 to pData.FieldCount -1 do
    if (pData.Fields[i].DisplayName <> pData.Fields[i].FieldName) then
      lbSelect.Items.Add(pData.Fields[i].DisplayName);
end;

procedure TfrmSlctFields.LoadSelected(pData: TDataSet);
var
  i: Integer;
begin
  Data := pData;
  for i := 0 to pData.FieldCount -1 do
  begin
    if (pData.Fields[i].DisplayName <> pData.Fields[i].FieldName) then
      lbSelect.Items.Add(pData.Fields[i].DisplayName);
  end;
end;

procedure TfrmSlctFields.btnUnSelectClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lbSelect.Items.Count -1 do
    if lbSelect.Selected[i] then
      lbUnSelect.Items.Add(lbSelect.Items[i]);
  lbSelect.DeleteSelected;
end;

procedure TfrmSlctFields.btnSelectClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to lbUnSelect.Items.Count -1 do
    if lbUnSelect.Selected[i] then
      lbSelect.Items.Add(lbUnSelect.Items[i]);
  lbUnSelect.DeleteSelected;
end;

procedure TfrmSlctFields.btnOkClick(Sender: TObject);
var
  i: Integer;
begin
  lbSelect.Items.SaveToFile(Path + SlctList);
  lbUnSelect.Items.SaveToFile(Path + UnSlctList);
  for i := 0 to Data.FieldCount -1 do
    if (lbSelect.Items.IndexOf(Data.Fields[i].DisplayName) = -1) then
      Data.Fields[i].Visible := False;
end;

end.
