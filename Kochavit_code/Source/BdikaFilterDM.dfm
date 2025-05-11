inherited dmBdikaFilter: TdmBdikaFilter
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      'SELECT Dk.*, ShemD, Zeut, Shem'
      'FROM KDrBdika Dk'
      '   LEFT JOIN KDriver Dr ON Dk.DriverId = Dr.Id'
      '         LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id')
    ReadOnly = True
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterDriverId: TIntegerField
      FieldName = 'DriverId'
    end
    object qrFilterBdikaD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1489#1491#1497#1511#1492
      FieldName = 'BdikaD'
    end
    object qrFilterBdika: TStringField
      DisplayLabel = #1502#1492#1493#1514' '#1492#1489#1491#1497#1511#1492
      FieldName = 'Bdika'
      Size = 25
    end
    object qrFilterMakom: TStringField
      DisplayLabel = #1502#1511#1493#1501' '#1492#1489#1491#1497#1511#1492
      FieldName = 'Makom'
      Size = 25
    end
    object qrFilterTipul: TStringField
      DisplayLabel = #1496#1497#1508#1493#1500#1497#1501' '#1504#1497#1500#1493#1493#1497#1501
      FieldName = 'Tipul'
      Size = 25
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
