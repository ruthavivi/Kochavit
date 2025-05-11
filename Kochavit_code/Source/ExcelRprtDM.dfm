object dmExcelRprt: TdmExcelRprt
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 48
    Top = 32
  end
  object qrGnrlX: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 120
    Top = 32
  end
end
