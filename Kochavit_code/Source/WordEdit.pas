unit WordEdit;

interface
uses
  Dialogs, SysUtils, WordFunc;

  procedure SelectDoc(pPath: String);
  procedure EditWord(pWorkFile: String);

implementation

procedure SelectDoc(pPath: String);
var
  od: TOpenDialog;
begin
  od := TOpenDialog.Create(nil);
  try
    od.InitialDir := ExtractFilePath(pPath);
    od.DefaultExt := '*.Doc';
    od.Filter := 'Word files|*.Doc;*.Dot|All Files|*.*';
    od.FilterIndex := 0;
    if od.Execute then
      EditWord(od.FileName);
  finally
    od.Free;
  end;
end;

procedure EditWord(pWorkFile: String);
var
   WordObj: TWordObj;
begin
  WordObj := TWordObj.Create;
  try
    if WordObj.ConnectWord and WordObj.OpenDocKov(pWorkFile) then
      WordObj.EditDoc;
  finally
    WordObj.CloseWord;
    WordObj.Free;
  end;
end;

end.
