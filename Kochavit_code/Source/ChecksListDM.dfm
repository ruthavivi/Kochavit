object dmChecksList: TdmChecksList
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 214
  Width = 182
  object qrGnrl: TEDBQuery
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    Params = <>
    Left = 40
    Top = 112
  end
  object qrChecksList: TEDBQuery
    ReadOnly = True
    BeforeOpen = qrChecksListBeforeOpen
    AfterOpen = qrChecksListAfterOpen
    DatabaseName = 'dbnMain'
    SessionName = 'Main'
    DataSource = dmMain.dsClient
    SQL.Strings = (
      'SELECT Id, Bill, CheckNo, AfkadaD, PidyonD, Return, Shem'
      'FROM KChecks Cs'
      'LEFT JOIN KClient Cl ON Cs.ClientId = Cl.Id'
      'WHERE Nifda = False'
      'ORDER BY PidyonD')
    Params = <>
    Left = 48
    Top = 40
    object qrChecksListclSign: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'clSign'
      OnGetText = qrChecksListclSignGetText
      Size = 1
      Calculated = True
    end
    object qrChecksListId: TIntegerField
      DisplayLabel = #1502#1505#39
      FieldName = 'Id'
    end
    object qrChecksListBill: TStringField
      DisplayLabel = #1506#1489#1493#1512' '#1495#1513#1489#1493#1503
      FieldName = 'Bill'
      Size = 10
    end
    object qrChecksListCheckNo: TIntegerField
      DisplayLabel = #1502#1505#1508#1512' '#1492#1502#1495#1488#1492
      FieldName = 'CheckNo'
    end
    object qrChecksListAfkadaD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1511#1489#1500#1492
      FieldName = 'AfkadaD'
    end
    object qrChecksListPidyonD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1508#1491#1497#1493#1503
      FieldName = 'PidyonD'
    end
    object qrChecksListShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
    object qrChecksListReturn: TBooleanField
      FieldName = 'Return'
    end
  end
  object frdbCheckList: TfrxDBDataset
    UserName = 'frdbCheckList'
    CloseDataSource = False
    DataSet = qrChecksList
    BCDToCurrency = False
    Left = 104
    Top = 96
  end
end
