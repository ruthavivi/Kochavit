inherited frmCrFollowRprtSlctDlg: TfrmCrFollowRprtSlctDlg
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
  object frdbFollow: TfrxDBDataset
    UserName = 'frdbFollow'
    CloseDataSource = False
    DataSet = dmCrFollowFilter.qrFilter
    BCDToCurrency = False
    Left = 224
    Top = 104
  end
end
