inherited frmDriverOnCarRprtSlctDlg: TfrmDriverOnCarRprtSlctDlg
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
  end
  object frdbDriverOnCarFilter: TfrxDBDataset
    UserName = 'frdbDriverOnCarFilter'
    CloseDataSource = False
    DataSet = dmDriverOnCarFilter.qrFilter
    BCDToCurrency = False
    Left = 160
    Top = 104
  end
end
