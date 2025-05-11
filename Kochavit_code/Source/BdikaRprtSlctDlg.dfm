inherited frmBdikaRprtSlctDlg: TfrmBdikaRprtSlctDlg
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
  object frdbBdika: TfrxDBDataset
    UserName = 'frdbBdika'
    CloseDataSource = False
    DataSet = dmBdikaFilter.qrFilter
    BCDToCurrency = False
    Left = 176
    Top = 104
  end
end
