inherited dmClientListArhiv: TdmClientListArhiv
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  inherited qrList: TEDBQuery
    ReadOnly = True
    BeforeOpen = qrListBeforeOpen
    AfterOpen = qrListAfterRefresh
    AfterRefresh = qrListAfterRefresh
    SQL.Strings = (
      'SELECT Id, Cod, Shem, HP, Isuv'
      'FROM KClient    '
      'WHERE Pail = False'
      'ORDER BY Shem')
    object qrListId: TIntegerField
      FieldName = 'Id'
    end
    object qrListCod: TIntegerField
      DisplayLabel = #1511#1493#1491' '#1495#1489#1512#1492
      FieldName = 'Cod'
    end
    object qrListHP: TIntegerField
      DisplayLabel = #1502#1505#39'  '#1495#1489#1512#1492
      FieldName = 'HP'
    end
    object qrListShem: TStringField
      DisplayLabel = #1513#1501' '#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
    object qrListIsuv: TStringField
      DisplayLabel = #1497#1513#1493#1489
      FieldName = 'Isuv'
      Size = 15
    end
  end
end
