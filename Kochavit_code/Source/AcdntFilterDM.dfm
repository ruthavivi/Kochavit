inherited dmAcdntFilter: TdmAcdntFilter
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      'SELECT Ac.*, CodCar, Number, Type, Producer, Cod, Shem'
      'FROM KCrAcdnt Ac'
      '  LEFT JOIN KCar Cr ON Ac.CarId = Cr.Id'
      '    LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id'
      '    LEFT JOIN KTblProducer tR ON Cr.ProducerId = tR.Id'
      '    LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id')
    ReadOnly = True
    Top = 28
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterCarId: TIntegerField
      FieldName = 'CarId'
    end
    object qrFilterAcdntD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1488#1512#1493#1506
      FieldName = 'AcdntD'
    end
    object qrFilterDescrpt: TStringField
      DisplayLabel = #1514#1488#1493#1512
      FieldName = 'Descrpt'
      Size = 30
    end
    object qrFilterStatus: TStringField
      DisplayLabel = #1505#1496#1496#1493#1505
      FieldName = 'Status'
    end
    object qrFilterCodCar: TIntegerField
      DisplayLabel = #1502#1505#39' '#1505#1497#1491#1493#1512#1497
      FieldName = 'CodCar'
    end
    object qrFilterNumber: TStringField
      DisplayLabel = #1502#1505#39' '#1512#1513#1497#1493#1503
      FieldName = 'Number'
      Size = 9
    end
    object qrFilterType: TStringField
      DisplayLabel = #1505#1493#1490
      FieldName = 'Type'
    end
    object qrFilterProducer: TStringField
      DisplayLabel = #1497#1510#1512#1503
      FieldName = 'Producer'
    end
    object qrFilterCod: TIntegerField
      DisplayLabel = #1502#1505#39' '#1505#1497#1491#1493#1512#1497' '#1495#1489#1512#1492
      FieldName = 'Cod'
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
  end
end
