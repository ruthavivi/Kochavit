inherited frmHeiterSpssSlctDlg: TfrmHeiterSpssSlctDlg
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
      'SELECT Heiter, COUNT(Id) Num'
      
        'FROM ( SELECT Id, Heiter, DateDone, CodDrv, ShemD, Zeut, Cod, Sh' +
        'em'
      'FROM KDrHeiterHis Dh   '
      'LEFT JOIN KDriver Dr ON Dh.DriverId = Dr.Id     '
      'LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id   '
      'LEFT JOIN KTblHeiter tH ON Dh.HeiterId = tH.Id '
      'WHERE Pail = True'
      'ORDER BY DateDone ) AS BaseSql'
      'GROUP BY Heiter'
      'ORDER BY Heiter')
  end
  object frdbHeiter: TfrxDBDataset
    UserName = 'frdbHeiter'
    CloseDataSource = False
    DataSet = qrSpss
    BCDToCurrency = False
    Left = 216
    Top = 160
  end
end
