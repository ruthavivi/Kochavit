object dmImportMasofonData: TdmImportMasofonData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 216
  Width = 247
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 80
    Top = 112
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.*'
    Filter = 'All files (*.*)|*.*|ASCII files (*.txt)|*.txt'
    InitialDir = 'C:'
    Left = 168
    Top = 112
  end
  object tbTempImport: TEDBTable
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    TableName = 'KTempImport'
    Left = 80
    Top = 40
  end
end
