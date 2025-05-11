inherited frmTipulRprtSlctDlg: TfrmTipulRprtSlctDlg
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
  object frdbTipulFilter: TfrxDBDataset
    UserName = 'frdbTipulFilter'
    CloseDataSource = False
    DataSet = dmTipulFilter.qrFilter
    BCDToCurrency = False
    Left = 160
    Top = 104
  end
  object frdbTipulDtl: TfrxDBDataset
    UserName = 'frdbTipulDtl'
    CloseDataSource = False
    DataSet = dmTipulFilter.qrDtl
    BCDToCurrency = False
    Left = 240
    Top = 104
  end
end
