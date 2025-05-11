object dmImportFromMasafon: TdmImportFromMasafon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 205
  Width = 220
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 96
    Top = 80
  end
end
