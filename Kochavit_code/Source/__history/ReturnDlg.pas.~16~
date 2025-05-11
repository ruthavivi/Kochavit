unit ReturnDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, System.UITypes,
  edbcomps;

type
  TfrmReturnDlg = class(TForm)
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    Panel1: TPanel;
    lbHead: TLabel;
    dsClient: TDataSource;
    cbClient: TComboBox;
    qrClient: TEDBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure FillComboBox;
  public
    { Public declarations }
    NewId: String;
  end;

var
  frmReturnDlg: TfrmReturnDlg;

implementation
uses
  CarListArhiv, CarListArhivDM, DriverListArhivDM;
{$R *.dfm}

procedure TfrmReturnDlg.FormCreate(Sender: TObject);
begin
  qrClient.Open;
  FillComboBox;
end;

procedure TfrmReturnDlg.FillComboBox;
begin
  qrClient.First;
  while not qrClient.Eof do
  begin
    cbClient.Items.Add(Trim(qrClient.FieldByName('Shem').AsString));
    qrClient.Next;
  end;

  if (Owner = frmCarListArhiv) then
    cbClient.ItemIndex :=
      cbClient.Items.IndexOf(dmCarListArhiv.qrList.FieldByName('Shem').AsString)
  else
    cbClient.ItemIndex :=
      cbClient.Items.IndexOf(dmDriverListArhiv.qrList.FieldByName('Shem').AsString);
end;

procedure TfrmReturnDlg.btnSaveClick(Sender: TObject);
begin
   qrClient.Locate('Shem', cbClient.Text, []);
   NewId := qrClient.FieldByName('Id').AsString;
end;

procedure TfrmReturnDlg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if (Self.ModalResult = mrYes) and (cbClient.Text = '') then
   begin
       MessageDlg('חובה לבחור חברה', mtError, mbOKCancel, 0);
       CanClose := False;
   end;
end;

procedure TfrmReturnDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrClient.Close;
end;

end.
