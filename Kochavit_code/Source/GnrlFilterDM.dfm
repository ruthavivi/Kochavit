object dmGnrlFilter: TdmGnrlFilter
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 196
  Width = 158
  object qrFilter: TEDBQuery
    BeforeOpen = qrFilterBeforeOpen
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 56
    Top = 32
  end
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 56
    Top = 120
  end
end
