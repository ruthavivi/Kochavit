unit ImportFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GnrlImport, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, ExtCtrls;

type
  TdlgImportFile = class(TdlgGnrlImport)
    OpenDialog: TOpenDialog;
    procedure FormActivate(Sender: TObject);
    procedure btnAbortClick(Sender: TObject);
  private
    function ImportFile: Boolean;
  public
    PathAndFile: String;
  end;

var
  dlgImportFile: TdlgImportFile;

implementation

{$R *.dfm}

procedure TdlgImportFile.FormActivate(Sender: TObject);
begin
  inherited;
  if not ImportFile then
  begin
    Self.ModalResult := mrAbort;
    Self.Close;
  end;
end;

function TdlgImportFile.ImportFile: Boolean;
begin
  Result := False;
  if OpenDialog.Execute then
  begin
    PathAndFile := OpenDialog.FileName;
    Result := True;
  end;
end;

procedure TdlgImportFile.btnAbortClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
