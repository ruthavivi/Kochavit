inherited frmTipulSpssSlctDlg: TfrmTipulSpssSlctDlg
  Caption = #1489#1495#1497#1512#1514' '#1491#1493'"'#1495' '#1505#1496#1497#1505#1496#1497
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
      'SELECT Tm.Oved, COUNT(Tm.Id) Num '
      'FROM KCrTipulHis Tp'
      'LEFT JOIN KCar Cr ON Cr.Id = Tp.CarId '
      'LEFT JOIN KTblOved Tm ON Tm.Id = Tp.OvedId '
      'LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId '
      'LEFT JOIN KTblTipul Tt ON Tt.Id = Tp.TipulId '
      'GROUP BY Tm.Oved'
      'ORDER BY Tm.Oved')
  end
  object frdbTipul: TfrxDBDataset
    UserName = 'frdbTipul'
    CloseDataSource = False
    DataSet = qrSpss
    BCDToCurrency = False
    Left = 216
    Top = 176
  end
end
