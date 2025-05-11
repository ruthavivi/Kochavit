inherited frmAcdntRprtSlctDlg: TfrmAcdntRprtSlctDlg
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
  object frdbAcdnt: TfrxDBDataset
    UserName = 'frdbAcdnt'
    CloseDataSource = False
    DataSet = dmAcdntFilter.qrFilter
    BCDToCurrency = False
    Left = 224
    Top = 104
  end
end
