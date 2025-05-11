inherited frmCrAcdntRprtSlctDlg: TfrmCrAcdntRprtSlctDlg
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPrint: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnPreview: TBitBtn
      OnClick = btnPreviewClick
    end
    inherited btnRTF: TBitBtn
      OnClick = btnRTFClick
    end
  end
  object rqCrAcdnt: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Left = 16
    Top = 24
  end
end
