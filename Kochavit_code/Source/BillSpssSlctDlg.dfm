inherited frmBillSpssSlctDlg: TfrmBillSpssSlctDlg
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
    ReadOnly = True
    SQL.Strings = (
      'SELECT Shem, SUM(SumA) Num'
      
        'FROM ( SELECT Bl.*, Shem, Isuv, Tel1, Tel2, ACounter, TelA, IF (' +
        'Payd THEN '#39#235#239#39' ELSE '#39#236#224#39') AS PaydTrg'
      'FROM KBill Bl'
      'LEFT JOIN KClient Cl ON Bl.ClientId = Cl.Id'
      ') AS BaseSql'
      'GROUP BY Shem'
      'ORDER BY Shem')
  end
  object frdbBills: TfrxDBDataset
    UserName = 'frdbBills'
    CloseDataSource = False
    DataSet = qrSpss
    BCDToCurrency = False
    Left = 208
    Top = 176
  end
end
