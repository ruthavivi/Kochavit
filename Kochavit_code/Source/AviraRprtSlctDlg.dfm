inherited frmAviraRprtSlctDlg: TfrmAviraRprtSlctDlg
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
  end
  object frdbAvira: TfrxDBDataset
    UserName = 'frdbAvira'
    CloseDataSource = False
    DataSet = dmAviraFilter.qrFilter
    BCDToCurrency = False
    Left = 192
    Top = 144
  end
end
