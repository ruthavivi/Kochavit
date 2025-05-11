inherited frmChecksRprtSlctDlg: TfrmChecksRprtSlctDlg
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPrint: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnPreview: TBitBtn
      Top = 4
      OnClick = btnPreviewClick
      ExplicitTop = 4
    end
  end
  object frdbChecks: TfrxDBDataset
    UserName = 'frdbChecks'
    CloseDataSource = False
    DataSet = dmChecksFilter.qrFilter
    BCDToCurrency = False
    Left = 192
    Top = 104
  end
end
