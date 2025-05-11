inherited frmDriverRprtSlctDlg: TfrmDriverRprtSlctDlg
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
  object frdbDriver: TfrxDBDataset
    UserName = 'frdbDriver'
    CloseDataSource = False
    DataSet = dmDriverFilter.qrFilter
    BCDToCurrency = False
    Left = 176
    Top = 104
  end
end
