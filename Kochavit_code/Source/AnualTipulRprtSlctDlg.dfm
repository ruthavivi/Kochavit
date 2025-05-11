inherited frmAnualTipulRprtSlctDlg: TfrmAnualTipulRprtSlctDlg
  BorderStyle = bsDialog
  ClientHeight = 217
  ClientWidth = 374
  Visible = False
  ExplicitWidth = 380
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 374
    Height = 142
    ExplicitWidth = 374
    ExplicitHeight = 142
    inherited edTitle: TMemo
      Top = 97
      Width = 372
      ExplicitTop = 97
      ExplicitWidth = 372
    end
    inherited rgReports: TRadioGroup
      Width = 372
      Height = 96
      ExplicitWidth = 372
      ExplicitHeight = 96
    end
  end
  inherited Panel1: TPanel
    Top = 142
    Width = 374
    ExplicitTop = 142
    ExplicitWidth = 374
    inherited btnPrint: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnPreview: TBitBtn
      OnClick = btnPreviewClick
    end
  end
  object frdbAnualTipul: TfrxDBDataset
    UserName = 'frdbAnualTipul'
    CloseDataSource = False
    DataSet = dmAnualTipulFilter.qrFilter
    BCDToCurrency = False
    Left = 236
    Top = 88
  end
end
