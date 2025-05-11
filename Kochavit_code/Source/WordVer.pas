unit WordVer;

interface
uses
   Windows, SysUtils, Registry;

   function GetCurrentWordMajorVersion: Integer;

implementation

function GetCurrentWordMajorVersion: Integer;
var
  vRegistry: TRegistry;
  vVersionStr: string;
  vVersion: string;
begin
   Result := -1;
   vRegistry := TRegistry.Create(KEY_READ);
   try
       vRegistry.RootKey := HKEY_CLASSES_ROOT;
       if vRegistry.OpenKeyReadOnly('Word.Application\CurVer') then
       begin
       { Get the default value: 'Word.Application.10'. }
           vVersionStr := vRegistry.ReadString('');
      { Extract the major version from the string. }
           vVersion := System.Copy(vVersionStr, Succ(LastDelimiter('.',
                   vVersionStr)), MAXINT);
      { 8=Word97, 9=Word2000, 10=Word2002, etc. }
      Result := StrToIntDef(vVersion, -1);
    end;
  finally
    vRegistry.Free;
  end;
end;

end.
