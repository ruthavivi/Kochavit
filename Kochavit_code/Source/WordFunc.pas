﻿unit WordFunc;

interface
uses
   SysUtils, Classes, OleServer, OleCtrls, WordXP, Word2000, Printers,
   Variants;

type
  TWordObj = class
  private
    WordApp: TWordApplication;
    procedure TableFirstColumn(pTable: Integer);
  public
    function  ConnectWord(): Boolean;
    function  OpenDocKov(WorkFile: OleVariant): Boolean;
    procedure OpenDoc(WorkFile: OleVariant);
    procedure EditDoc;
    procedure WriteNewLine(vValue: String);
    function  EnterInTable(tableName: OleVariant): Boolean;
    procedure WriteInCell(vValue: String);
    procedure WriteInCellNew(vValue: String; pMove: Boolean);
    procedure TableInsertRow;
    procedure TableInsertRowNew(pTable: Integer);
    function  ExistBookMark(vName: String): Boolean;
    procedure InsertBookMark(vName, vValue: String);
    procedure InsertEtekData(pList: TStringList);
    procedure PrintDoc(nCopy: OleVariant);
    procedure PrintDocNew(nCopy: OleVariant);
    procedure SaveAsDoc(pFileName: OleVariant);
    procedure SaveAsDocNew(tmpName: OleVariant);
    procedure FaxDoc(nCopy, pSubject: OleVariant; pFaxNum: WideString);
    procedure CloseDoc;
    procedure CloseWord;
  end;

implementation

{ TWordObj }

function TWordObj.ConnectWord(): Boolean;
begin
   Result := False;
   try
       WordApp := TWordApplication.Create(nil);
       WordApp.Connect;
       Result := True;
   except on E: Exception do
       begin
           E.Message := 'מעבד Word אינו קיים';
           raise;
       end;
   end;
end;

function TWordObj.OpenDocKov(WorkFile: OleVariant): Boolean;
begin
  Result := False;
  try
    WordApp.Documents.OpenOld(WorkFile, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);
    Result := True;
  except
    on E: Exception do
    begin
      E.Message := 'מסמך אינו קיים ' + WorkFile;
      raise;
    end;
  end;
end;

procedure TWordObj.OpenDoc(WorkFile: OleVariant);
begin
   WordApp.Documents.OpenOld(WorkFile, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam);
end;

procedure TWordObj.EditDoc;
begin
   WordApp.Visible := True;
   WordApp.WindowState := wdWindowStateMaximize;
end;

procedure TWordObj.InsertBookMark(vName, vValue: String);
var
   What, bmName: OleVariant;
begin
   What := Integer(wdGoToBookMark);
   bmName := vName;
   if (vValue = '') then
       vValue := ' ';

   if WordApp.ActiveDocument.Bookmarks.Exists(vName) then
   begin
       WordApp.Selection.GoTo_(What,
                   EmptyParam, EmptyParam, bmName);
       WordApp.Selection.TypeText(vValue);
   end;
end;

function TWordObj.ExistBookMark(vName: String): Boolean;
begin
  Result := False;
  if WordApp.ActiveDocument.Bookmarks.Exists(vName) then
    Result := True;
end;

procedure TWordObj.InsertEtekData(pList: TStringList);
var
  i: Integer;
  Arg: OleVariant;
begin
  Arg := wdStory;
  WordApp.Selection.EndKey(Arg, EmptyParam);
  WordApp.Selection.RtlPara;
  for i := 0 to pList.Count -1 do
  begin
    if i = 0 then
    begin
      WordApp.Selection.Paragraphs.TabIndent(1);
      WordApp.Selection.TypeText(pList[i]);
    end
    else
    begin
      WriteNewLine('');
      WordApp.Selection.Paragraphs.TabIndent(1);
      WordApp.Selection.TypeText(pList[i]);
    end;
  end;
end;

procedure TWordObj.WriteNewLine(vValue: String);
begin
   WordApp.Selection.TypeText(#13+vValue);
end;

procedure TWordObj.PrintDoc(nCopy: OleVariant);
var
   Background, SaveChanges: OleVariant;
begin
   Background := False;
   WordApp.PrintOutOld(Background, EmptyParam, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam, EmptyParam,
           nCopy);

   SaveChanges := wdDoNotSaveChanges;
   WordApp.ActiveDocument.Close(SaveChanges,
                       EmptyParam, EmptyParam);
end;

procedure TWordObj.PrintDocNew(nCopy: OleVariant);
var
  Background: OleVariant;
begin
  Background := False;
  WordApp.PrintOutOld(Background, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, nCopy);
end;

procedure TWordObj.SaveAsDoc(pFileName: OleVariant);
var
  DocFileSaved, DocFormat: OleVariant;
begin
  DocFileSaved := ExtractFilePath(ParamStr(0)) + 'Temp\' + pFileName;
  if (ExtractFileExt(pFileName) = '.PDF') then
    DocFormat := 17; // PDF Format
  WordApp.ActiveDocument.SaveAs(DocFileSaved, DocFormat, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam);
end;

procedure TWordObj.SaveAsDocNew(tmpName: OleVariant);
var
  DocFileSaved: OleVariant;
begin
  DocFileSaved := ExtractFilePath(ParamStr(0)) + 'Temp\' + tmpName;
  WordApp.ActiveDocument.SaveAs(DocFileSaved, EmptyParam, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
           EmptyParam, EmptyParam, EmptyParam);
end;

procedure TWordObj.FaxDoc(nCopy, pSubject: OleVariant; pFaxNum: WideString);
begin
   WordApp.ActiveDocument.SendFax(pFaxNum, pSubject);
end;

function TWordObj.EnterInTable(tableName: OleVariant): Boolean;
begin
  if WordApp.ActiveDocument.Bookmarks.Exists(tableName) then
  begin
    WordApp.ActiveDocument.Bookmarks.Item(tableName).Select;
    Result := True;
  end
  else
    Result := False;
end;

procedure TWordObj.WriteInCell(vValue: String);
var
  Arg1, Arg2: OleVariant;
begin
  WordApp.Selection.TypeText(vValue);
  Arg1:=wdCell;
  Arg2:=1;
  WordApp.Selection.MoveRight(Arg1,Arg2,EmptyParam);
end;

procedure TWordObj.WriteInCellNew(vValue: String; pMove: Boolean);
var
  Arg1, Arg2: OleVariant;
begin
  WordApp.Selection.TypeText(vValue);
  if pMove then
  begin
    Arg1:=wdCell;
    Arg2:=1;
    WordApp.Selection.MoveRight(Arg1,Arg2,EmptyParam);
  end;
end;

procedure TWordObj.TableFirstColumn(pTable: Integer);
var
  Tbl: Table;
begin
  Tbl := WordApp.ActiveDocument.Tables.Item(pTable);
  Tbl.Cell(Tbl.Rows.Count, 1).Select;
end;

procedure TWordObj.TableInsertRow;
var
  Arg: OleVariant;
begin
  Arg:=1;
  WordApp.Selection.InsertRowsBelow(Arg);
end;

procedure TWordObj.TableInsertRowNew(pTable: Integer);
var
  Arg: OleVariant;
begin
  Arg:=1;
  WordApp.Selection.InsertRowsBelow(Arg);
  TableFirstColumn(pTable);
end;

procedure TWordObj.CloseDoc;
var
  SaveChanges: OleVariant;
begin
  SaveChanges := wdDoNotSaveChanges;
  WordApp.ActiveDocument.Close(SaveChanges, EmptyParam, EmptyParam);
end;

procedure TWordObj.CloseWord;
begin
   WordApp.Disconnect;
end;

end.
