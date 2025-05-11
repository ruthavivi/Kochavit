unit ImportMasofon;

interface
uses
  Windows, SysUtils, Classes, Forms, StrUtils;

type
  TImportMasofon = class
    private
      SourceFile, WorkFile: String;




  end;

implementation

{ TImportMasofon }

{
//Create Table name ImportFile on Kb


CREATE STORE "ImportFiles" AS
LOCAL PATH 'C:\Documents and Settings\Sorin\My Documents\RAD Studio\Projects\Kochavit4\ImportFiles'

Convert FeedBackNew5 To Ansii name ImportFile.Txt on path ImportFiles

Delete Data from ImportFile

IMPORT TABLE ImportFile
FROM "FeedBackNew5.txt"
IN STORE "ImportFile"
DELIMITER CHAR #124
}





{ TImportMasofon }


end.
