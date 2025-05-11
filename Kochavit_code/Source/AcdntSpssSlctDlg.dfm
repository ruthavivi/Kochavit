inherited frmAcdntSpssSlctDlg: TfrmAcdntSpssSlctDlg
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
      'SELECT Type, COUNT(Id) Num'
      'FROM ( SELECT Ac.*, CodCar, Number, Type, Producer, Cod, Shem'
      'FROM KCrAcdnt Ac   '
      'LEFT JOIN KCar Cr ON Ac.CarId = Cr.Id     '
      'LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id     '
      'LEFT JOIN KTblProducer tR ON Cr.ProducerId = tR.Id     '
      'LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id'
      'WHERE Pail = True'
      'ORDER BY AcdntD ) AS BaseSql'
      'GROUP BY Type'
      'ORDER BY Type')
  end
  object frdbAcdntCr: TfrxDBDataset
    UserName = 'frdbAcdntCr'
    CloseDataSource = False
    DataSet = qrSpss
    BCDToCurrency = False
    Left = 216
    Top = 176
  end
end
