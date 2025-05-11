inherited frmCrAcdntSpssSlctDlg: TfrmCrAcdntSpssSlctDlg
  Caption = #1489#1495#1497#1512#1514' '#1491#1493'"'#1495' '#1505#1496#1496#1497#1505#1496#1497
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
  inherited RvRprt: TRvProject
    Left = 152
    Top = 80
  end
  inherited RvSystem: TRvSystem
    Left = 112
    Top = 80
  end
  inherited qrSpss: TEDBQuery
    SQL.Strings = (
      'SELECT Ty.Type, COUNT(Ca.Id) Num '
      'FROM KCrAcdnt Ca '
      'LEFT JOIN KCar Cr ON Cr.Id = Ca.CarId '
      'LEFT JOIN KTblType Ty ON Ty.Id = Cr.TypeId '
      'GROUP BY Ty.Type '
      'ORDER BY Ty.Type')
  end
  object ccChartsCAc: TRvCustomConnection
    RuntimeVisibility = rtDeveloper
    OnGetCols = ccChartsCAcGetCols
    OnGetRow = ccChartsCAcGetRow
    Left = 9
    Top = 112
  end
  object qcCrAcdntByTyp: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = qrSpss
    Left = 49
    Top = 112
  end
end
