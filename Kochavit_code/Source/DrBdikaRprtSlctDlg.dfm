inherited frmDrBdikaRprtSlctDlg: TfrmDrBdikaRprtSlctDlg
  Caption = #1489#1495#1497#1512#1514' '#1491#1493'"'#1495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPrint: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnPreview: TBitBtn
      OnClick = btnPreviewClick
    end
    inherited btnFax: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnRTF: TBitBtn
      OnClick = btnRTFClick
    end
  end
  object rqDrBdika: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = frmDrBdikaFilter.qrFilter
    Left = 16
    Top = 24
  end
end
