unit BillPayd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls;

type
  TfrmBillPayd = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    dtPayd: TDateTimePicker;
    Label2: TLabel;
    edKabala: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure edKabalaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBillPayd: TfrmBillPayd;

implementation
uses
  DialogsHeb;
{$R *.dfm}

procedure TfrmBillPayd.FormCreate(Sender: TObject);
begin
   dtPayd.DateTime := Date;
end;

procedure TfrmBillPayd.edKabalaExit(Sender: TObject);
begin
  if ((Sender as TMaskEdit).Text = '') then
  begin
    MessageDlgH('חובה להקליד ערך', mtConfirmation, [mbOk], 0, 0);
    (Sender as TMaskEdit).SetFocus;
   end;
end;

end.
