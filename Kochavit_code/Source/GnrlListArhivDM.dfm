object dmGnrlListArhiv: TdmGnrlListArhiv
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object qrList: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 40
    Top = 16
  end
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 40
    Top = 80
  end
end
