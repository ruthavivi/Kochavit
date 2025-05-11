inherited frmChecksSpssSlctDlg: TfrmChecksSpssSlctDlg
  ExplicitWidth = 442
  ExplicitHeight = 379
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPrint: TBitBtn
      OnClick = btnPrintClick
    end
    inherited btnPreview: TBitBtn
      OnClick = btnPrintClick
    end
  end
  inherited qrSpss: TEDBQuery
    SQL.Strings = (
      'SELECT Bank, SUM(CheckSum) Tot, COUNT(Id) Num'
      
        'FROM ( SELECT Ch.*, Bank, IF (Nifda THEN '#39'??'#39' ELSE '#39'??'#39') AS Nifd' +
        'aTrg, '
      
        'IF (Return THEN '#39'??'#39' ELSE '#39'??'#39') AS ReturnTrg, Shem, Tel1, Tel2, ' +
        'ACounter, TelA'
      'FROM KChecks Ch '
      'LEFT JOIN KClient Cl ON Ch.ClientId = Cl.Id '
      'LEFT JOIN KTblBank tB ON Ch.BankId = tB.Id'
      'WHERE Pail = True) AS BaseSql'
      'GROUP BY Bank'
      'ORDER BY Bank')
    ReadOnly = True
  end
  object frdbCheks: TfrxDBDataset
    UserName = 'frdbCheks'
    CloseDataSource = False
    DataSet = qrSpss
    BCDToCurrency = False
    Left = 208
    Top = 176
  end
end
