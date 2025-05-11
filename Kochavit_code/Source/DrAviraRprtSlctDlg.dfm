inherited frmDrAviraRprtSlctDlg: TfrmDrAviraRprtSlctDlg
  Caption = #1489#1495#1497#1512#1514' '#1491#1493'"'#1495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPrint: TBitBtn
      Top = 8
      Height = 19
      OnClick = btnPrintClick
      ExplicitTop = 8
      ExplicitHeight = 19
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
  object rqDrAvira: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = frmDrAviraFilter.qrFilter
    Left = 16
    Top = 24
  end
end
