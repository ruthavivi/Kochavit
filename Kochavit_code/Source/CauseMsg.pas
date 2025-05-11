unit CauseMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmCauseMsg = class(TForm)
    Panel1: TPanel;
    btnClose: TBitBtn;
    Panel2: TPanel;
    lbMoed: TStaticText;
    lbSiba: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCauseMsg: TfrmCauseMsg;

implementation

{$R *.dfm}

end.
