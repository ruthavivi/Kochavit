inherited dmCarListArhiv: TdmCarListArhiv
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Width = 165
  inherited qrList: TEDBQuery
    BeforeOpen = qrListBeforeOpen
    AfterOpen = qrListAfterRefresh
    AfterRefresh = qrListAfterRefresh
    SQL.Strings = (
      'SELECT Id, CodCar, Number, Type, Producer, Shem'
      'FROM KCar Cr'
      'LEFT JOIN KTblType tT ON Cr.TypeId = tT.Id      '
      'LEFT JOIN KTblProducer tP ON Cr.ProducerId = tP.Id'
      'LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id'
      'WHERE Cr.Pail = False'
      'ORDER BY Number')
    object qrListId: TIntegerField
      FieldName = 'Id'
    end
    object qrListCodCar: TIntegerField
      DisplayLabel = #1511#1493#1491' '#1512#1499#1489
      FieldName = 'CodCar'
    end
    object qrListNumber: TStringField
      DisplayLabel = #1502#1505#1508#1512' '#1512#1499#1489
      FieldName = 'Number'
      Size = 9
    end
    object qrListType: TStringField
      DisplayLabel = #1505#1493#1490' '#1512#1499#1489
      FieldName = 'Type'
      Size = 30
    end
    object qrListProducer: TStringField
      DisplayLabel = #1497#1497#1510#1512#1503
      FieldName = 'Producer'
    end
    object qrListShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
  end
end
