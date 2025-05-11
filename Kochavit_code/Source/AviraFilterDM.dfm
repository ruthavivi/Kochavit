inherited dmAviraFilter: TdmAviraFilter
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      'SELECT Da.*, ShemD, Zeut, Shem'
      'FROM KDrAvira Da'
      '   LEFT JOIN KDriver Dr ON Da.DriverId = Dr.Id'
      '   LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id')
    ReadOnly = True
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterDriverId: TIntegerField
      FieldName = 'DriverId'
    end
    object qrFilterAviraD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1506#1489#1497#1512#1492
      FieldName = 'AviraD'
    end
    object qrFilterDescrpt: TStringField
      DisplayLabel = #1514#1488#1493#1512' '#1492#1506#1489#1497#1512#1492
      FieldName = 'Descrpt'
      Size = 30
    end
    object qrFilterDohNum: TStringField
      DisplayLabel = #1502#1505#39' '#1491#1493#1495
      FieldName = 'DohNum'
      Size = 15
    end
    object qrFilterTipul: TStringField
      DisplayLabel = #1488#1493#1508#1503' '#1496#1497#1508#1493#1500
      FieldName = 'Tipul'
      Size = 30
    end
    object qrFilterShemD: TStringField
      DisplayLabel = #1513#1501' '#1492#1504#1492#1490
      FieldName = 'ShemD'
      Size = 25
    end
    object qrFilterZeut: TStringField
      DisplayLabel = #1514'. '#1494#1492#1493#1514
      FieldName = 'Zeut'
      Size = 11
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
  end
end
