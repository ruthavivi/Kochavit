unit GnrlImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, ExtCtrls, Buttons;

type
  TdlgGnrlImport = class(TForm)
    imDisplay: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    lbFileName: TLabel;
    edDocName: TEdit;
    btnAbort: TBitBtn;
    btnOk: TBitBtn;
    cbSaveOnFolder: TCheckBox;
    procedure edDocNameChange(Sender: TObject);
    procedure cbSaveOnFolderClick(Sender: TObject);
  private

  public
    SaveOnFolder: Boolean;
  end;

var
  dlgGnrlImport: TdlgGnrlImport;

implementation
{$R *.dfm}


procedure TdlgGnrlImport.edDocNameChange(Sender: TObject);
begin
  btnOk.Enabled := not VarIsEmpty(edDocName.Text);
end;

procedure TdlgGnrlImport.cbSaveOnFolderClick(Sender: TObject);
begin
  SaveOnFolder := cbSaveOnFolder.Checked;
end;

end.
