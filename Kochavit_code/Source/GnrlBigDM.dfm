object dmGnrlBig: TdmGnrlBig
  OldCreateOrder = False
  Height = 201
  Width = 178
  object tbBigFolder: TEDBTable
    DatabaseName = 'dbnMainBig'
    SessionName = 'Main'
    TableName = 'KClTofes'
    Left = 48
    Top = 32
  end
  object qrBigFolder: TEDBQuery
    DatabaseName = 'dbnMainBig'
    SessionName = 'Main'
    RequestSensitive = True
    Params = <>
    Left = 48
    Top = 96
  end
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMainBig'
    SessionName = 'Main'
    Params = <>
    Left = 112
    Top = 96
  end
end
