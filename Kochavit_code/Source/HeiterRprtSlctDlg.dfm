inherited frmHeiterRprtSlctDlg: TfrmHeiterRprtSlctDlg
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
  end
  object frdbHeiter: TfrxDBDataset
    UserName = 'frdbHeiter'
    CloseDataSource = False
    DataSet = dmHeiterFilter.qrFilter
    BCDToCurrency = False
    Left = 192
    Top = 144
  end
end
