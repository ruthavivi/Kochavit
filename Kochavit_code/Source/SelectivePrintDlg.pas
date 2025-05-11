unit SelectivePrintDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvDateTimePicker, StdCtrls, Buttons, ExtCtrls;

type
  TdlgSelectivePrint = class(TForm)
    rgSelect: TRadioGroup;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edDate: TDateTimePicker;
    procedure rgSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSelectivePrint: TdlgSelectivePrint;

implementation

{$R *.dfm}

procedure TdlgSelectivePrint.rgSelectClick(Sender: TObject);
begin
  if rgSelect.ItemIndex = 1 then
    edDate.Enabled := True
  else
    edDate.Enabled := False;
end;

end.
