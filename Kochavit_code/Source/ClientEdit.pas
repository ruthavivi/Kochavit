﻿unit ClientEdit;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,  Dialogs, GnrlEdit, Menus,
  ActnList, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, StrUtils,
  ExtDlgs, DBActns, DBGrids, ImgList, Grids, ToolWin, DB, StdActns,
  System.Actions, System.ImageList;

type
  TfrmClientEdit = class(TfrmGnrlEdit)
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edCod: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edBahalim1: TDBEdit;
    edTelB1: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edShem: TDBEdit;
    edEMail: TDBEdit;
    edKtovet: TDBEdit;
    edIsuv: TDBEdit;
    edTel1: TDBEdit;
    edTel2: TDBEdit;
    edFax: TDBEdit;
    edKtovetP: TDBEdit;
    edSizeP: TDBEdit;
    Label19: TLabel;
    edBahalim2: TDBEdit;
    edTelB2: TDBEdit;
    Label20: TLabel;
    edContact: TDBEdit;
    edTelC: TDBEdit;
    Label21: TLabel;
    edProfesion: TDBEdit;
    edTelP: TDBEdit;
    Label22: TLabel;
    edAcounter: TDBEdit;
    edTelA: TDBEdit;
    edRemark: TDBMemo;
    edMikud: TDBEdit;
    Label23: TLabel;
    edHp: TDBEdit;
    Label28: TLabel;
    edZeutP: TDBEdit;
    Label29: TLabel;
    edOpenDate: TDBEdit;
    Label30: TLabel;
    edOved: TDBLookupComboBox;
    acSendMsg: TAction;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    DBGrid1: TDBGrid;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edPeriodPay: TDBEdit;
    edCreditPay: TDBEdit;
    Label31: TLabel;
    edMovil: TDBEdit;
    Label32: TLabel;
    edZeutM: TDBEdit;
    N9: TMenuItem;
    Label33: TLabel;
    edOfenPay: TDBLookupComboBox;
    dsClient: TDataSource;
    dsClFollow: TDataSource;
    acDeleteClFollow: TDataSetDelete;
    Splitter1: TSplitter;
    acLikuySendMessage: TAction;
    pmSendMsg: TPopupMenu;
    N12: TMenuItem;
    acSendEmail: TAction;
    ToolButton3: TToolButton;
    Label34: TLabel;
    edEMailX: TDBEdit;
    acMailSendList: TAction;
    edMsira: TDBCheckBox;
    pmEmailsSend: TPopupMenu;
    N13: TMenuItem;
    acStatusCars: TAction;
    N14: TMenuItem;
    acStatusDrvs: TAction;
    N15: TMenuItem;
    procedure acDocumentExecute(Sender: TObject);
    procedure acSendMsgExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edCodExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acMailExecute(Sender: TObject);
    procedure edOpenDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acScanExecute(Sender: TObject);
    procedure acPhotoExecute(Sender: TObject);
    procedure acShowScanExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure acPrintLabelExecute(Sender: TObject);
    procedure edOvedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acShowFolderExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acLikuySendMessageExecute(Sender: TObject);
    procedure acSendEmailExecute(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure acMailSendListExecute(Sender: TObject);
    procedure acStatusCarsExecute(Sender: TObject);
    procedure acStatusDrvsExecute(Sender: TObject);
  private
    function  HasAllValue: Boolean;
  public
    { Public declarations }
  end;

var
  frmClientEdit: TfrmClientEdit;

implementation
uses
   ClientEditDM, ScanImport, ImportPhoto, ImportFile, DialogsHeb, LikuySendMsg,
   WrnSendMsg, DocUtils, LabelWriter, GraphicUtils, FolderList, ShellAPI, KbFunc,
   MailSendList, StatusCars, StatusDrvs;
{$R *.dfm}

procedure TfrmClientEdit.FormCreate(Sender: TObject);
begin
  inherited;
  if (dmClientEdit.tbClient.State = dsInsert) then
  begin
    acMail.Enabled := False;
    acSendMsg.Enabled := False;
    acPrint.Enabled := False;
    acScan.Enabled := False;
    acPhoto.Enabled := False;
    acDocument.Enabled := False;
    acPrintLabel.Enabled := False;
    acShowScan.Enabled := False;
  end;
end;

// check requiered fields
procedure TfrmClientEdit.edCodExit(Sender: TObject);
begin
  inherited;
  if ((Sender as TDbEdit).Text = '') then
  begin
    MessageDlgH('חובה להקליד ערך', mtConfirmation, [mbOk], 0, 0);
       (Sender as TDbEdit).SetFocus;
  end;
end;

function TfrmClientEdit.HasAllValue: Boolean;
begin
  Result := CtrlHasValue(edCod, edCod.Text, '', 'חובה להקליד מספר סידורי') and
            CtrlHasValue(edHp, edHp.Text, '', 'חובה להקליד מספר חברה') and
            CtrlHasValue(edShem, edShem.Text, '', 'חובה להקליד שם חברה');
end;
procedure TfrmClientEdit.Label8Click(Sender: TObject);
begin
  inherited;

end;

// end check requiered fields

procedure TfrmClientEdit.edOpenDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    (Sender as TDBedit).Text := DateToStr(Date);
end;

procedure TfrmClientEdit.edOvedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DELETE) then
    with (Sender as TDBLookupComboBox) do
      DataSource.DataSet.FieldByName(Field.KeyFields).Clear;
end;

procedure TfrmClientEdit.acMailExecute(Sender: TObject);
var
   WorkFile, nCopy: OleVariant;
   vPath, vButton, vMemo: String;
   vSave: Boolean;
   vToEmails: TStringList;
   OneDoc: TDocUtils;
begin
  inherited;
  vPath := ExtractFilePath(Application.ExeName) + 'Docs\';
  if SelectDoc(WorkFile, nCopy, vButton, vMemo, vPath, vSave) then
  begin
    if (vButton = 'btnEmail') and
      ((edEMail.Text = '') and (edEMailX.Text = '')) then
        MessageDlgH('אין כתובות דואר אלקטרוני למשלוח...', mtConfirmation, [mbOk], 0, 0)
    else
    begin
      Screen.Cursor := crHourGlass;
      vToEmails := TStringList.Create;
      if (edEMail.Text <> '') then
        vToEmails.Add(dmClientEdit.tbClientEMail.AsString);
      if (edEMailX.Text <> '') then
        vToEmails.Add(dmClientEdit.tbClientEMailX.AsString);
      OneDoc := TDocUtils.Create(vButton, edShem.Text, 'מצורפת הודעה מקצין הבטיחות שלך',
        nCopy, vSave, vToEmails, WorkFile);
      try
        OneDoc.SendDoc(dmClientEdit.tbClient, nil, nil);
        if (vButton = 'btnEmail') and OneDoc.EmailSend then
          SaveEmailSend(dmClientEdit.tbClientId.AsString, 'NULL', 'NULL',
            OneDoc.Subject, ExtractFileName(ChangeFileExt(WorkFile, '.pdf')));

        if vSave and (vButton <> 'btnPreview') then
          dmClientEdit.SaveBigData(ExtractFilePath(Application.ExeName) + 'Temp\' +
            ExtractFileName(WorkFile), ChangeFileExt(ExtractFileName(WorkFile), ''),
            'DOC', True);
      finally
        vToEmails.Free;
        OneDoc.Free;
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

procedure TfrmClientEdit.acDocumentExecute(Sender: TObject);
begin
  inherited;
  dlgImportFile := TdlgImportFile.Create(Self);
  try
    with dlgImportFile do
    begin
      if (ShowModal = mrOk) then
        dmClientEdit.SaveBigData(PathAndFile, edDocName.Text,
            ReplaceStr(ExtractFileExt(PathAndFile), '.', ''), SaveOnFolder);
    end;
  finally
    dlgImportFile.Free;
  end;
end;

procedure TfrmClientEdit.acSendEmailExecute(Sender: TObject);
var
  ToEmails: TStringList;
  FilesDir: string;
begin
  inherited;
  ToEmails := TStringList.Create;
  try
    if (dmClientEdit.tbClientEMail.AsString <> '') then
      ToEmails.Add(dmClientEdit.tbClientEMail.AsString);
    if (dmClientEdit.tbClientEMailX.AsString <> '') then
      ToEmails.Add(dmClientEdit.tbClientEMailX.AsString);

    if ToEmails.Count > 0 then
    begin
      FilesDir :=  ExtractFilePath(Application.ExeName)+'Documents\Client\'+
        dmClientEdit.tbClientId.AsString;
      OpenEmailUtil(ToEmails, edShem.Text, FilesDir, dmClientEdit.tbClientId.AsString,
        'NULL', 'NULL');
    end
    else
      MessageDlgH('אין כתובות דואר אלקטרוני תקינות', mtWarning, [mbOk], 0, 0);
  finally
    ToEmails.Free;
  end;
end;

procedure TfrmClientEdit.acSendMsgExecute(Sender: TObject);
begin
  inherited;
  dlgWrnSendMsg := TdlgWrnSendMsg.Create(Self);
  dlgWrnSendMsg.Show;
end;

procedure TfrmClientEdit.acLikuySendMessageExecute(Sender: TObject);
begin
  inherited;
  dlgLikuySendMsg := TdlgLikuySendMsg.Create(Self);
  dlgLikuySendMsg.Show;
end;

procedure TfrmClientEdit.acStatusCarsExecute(Sender: TObject);
begin
  inherited;
  dlgStatusCars := TdlgStatusCars.Create(Self);
  dlgStatusCars.Show;
end;

procedure TfrmClientEdit.acStatusDrvsExecute(Sender: TObject);
begin
  inherited;
  dlgStatusDrvs := TdlgStatusDrvs.Create(Self);
  dlgStatusDrvs.Show;
end;

procedure TfrmClientEdit.acPrintLabelExecute(Sender: TObject);
var
  LabelFld: WideString;
begin
  inherited;
  with dmClientEdit do
    LabelFld := tbClientCod.AsString + #10#13 +
        tbClientShem.AsString + #10#13 +
        tbClientKtovet.AsString + #10#13 +
        tbClientIsuv.AsString + ' ' + tbClientMikud.AsString;
  PrintLabel(LabelFld);
end;

procedure TfrmClientEdit.acScanExecute(Sender: TObject);
begin
  inherited;
  dlgScanImport := TdlgScanImport.Create(Self);
  try
    with dlgScanImport do
    begin
      if (ShowModal = mrOk) then
        dmClientEdit.SaveBigData(PathAndFile, edDocName.Text,
             ReplaceStr(ExtractFileExt(PathAndFile), '.', ''), SaveOnFolder);
    end;
  finally
    dlgScanImport.Free;
  end;
end;

procedure TfrmClientEdit.acPhotoExecute(Sender: TObject);
begin
  inherited;
  dlgImportPhoto := TdlgImportPhoto.Create(Self);
  try
    with dlgImportPhoto do
    begin
      if (ShowModal = mrOk) then
      begin
        dmClientEdit.SaveBigData(OpenPictureDialog.FileName, edDocName.Text,
            ReplaceStr(ExtractFileExt(OpenPictureDialog.FileName), '.', ''), True)
      end;
    end;
  finally
    dlgImportPhoto.Free;
  end;
end;

procedure TfrmClientEdit.acShowScanExecute(Sender: TObject);
begin
  inherited;
  frmFolderList := TfrmFolderList.Create(Self);
  frmFolderList.OpenFile('KClTofes', 'ClientId', dmClientEdit.tbClientId.AsString);
  frmFolderList.ShowModal;
end;

procedure TfrmClientEdit.acShowFolderExecute(Sender: TObject);
var
  FolderName: String;
begin
  inherited;
  FolderName := ExtractFilePath(Application.ExeName)+'Documents\Client\'+
    dmClientEdit.tbClientId.AsString;
  ShellExecute(Application.MainForm.Handle, nil, PChar(FolderName),
        nil, nil, SW_SHOW);
end;

procedure TfrmClientEdit.acMailSendListExecute(Sender: TObject);
begin
  inherited;
  frmMailSendList := TfrmMailSendList.Create(Self);
  frmMailSendList.ShowModal;
end;

procedure TfrmClientEdit.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and ((Sender as TDBGrid).SelectedIndex = 0) then
  begin
    dmClientEdit.tbClFollow.Edit;
    (Sender as TDBGrid).Fields[0].AsDateTime := Date;
  end;
end;

procedure TfrmClientEdit.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = Char(VK_Return)) then
    if (dsClFollow.State in dsEditModes) then
      dmClientEdit.tbClFollow.Post;
end;

procedure TfrmClientEdit.acSaveExecute(Sender: TObject);
begin
  inherited;
  if HasAllValue then
  begin
    dmClientEdit.SaveData;
    Close;
  end;
end;

procedure TfrmClientEdit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if dmClientEdit.tbClient.Modified then
  begin
    case MessageDlgH('קימים נתונים חדשים בכרטיס. האם לשמור?',
         mtConfirmation, mbYesNoCancel, 0, 0) of
      id_Yes: begin
                if not HasAllValue then
                  Exit;
                dmClientEdit.SaveData;
                CanClose := True;
              end;
      id_No:  begin
                dmClientEdit.tbCLFollow.CancelCachedUpdates;
                CanClose := True;
              end;
      id_Cancel: CanClose := False;
    end;
  end
  else
    dmClientEdit.tbClFollow.CancelCachedUpdates;
end;

procedure TfrmClientEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmClientEdit.Free;
  inherited;
  frmClientEdit := Nil;
end;

end.
