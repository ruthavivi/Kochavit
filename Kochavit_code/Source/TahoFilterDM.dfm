inherited dmTahoFilter: TdmTahoFilter
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      
        'SELECT Id, Moed, IF (Speed THEN '#39#1499#1503#39' ELSE '#39#39') AS SpeedTrg, IF (Z' +
        'man THEN '#39#1499#1503#39' ELSE '#39#39') AS ZmanTrg, IF (Harig THEN '#39#1499#1503#39' ELSE '#39#39') ' +
        'AS HarigTrg, Remark, ShemD, Number, Shem'
      'FROM KDrTaho Dt'
      '  LEFT JOIN KDriver Dr ON Dt.DriverId = Dr.Id'
      '  LEFT JOIN KCar Cr ON Dt.CarId = Cr.Id'
      '    LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id')
    ReadOnly = True
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterMoed: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1504#1505#1497#1506#1492
      FieldName = 'Moed'
    end
    object qrFilterSpeedTrg: TStringField
      DisplayLabel = #1495#1512#1497#1490#1514' '#1502#1492#1497#1512#1493#1514
      FieldName = 'SpeedTrg'
      Size = 2
    end
    object qrFilterZmanTrg: TStringField
      DisplayLabel = #1495#1512#1497#1490#1514' '#1494#1502#1503
      FieldName = 'ZmanTrg'
      Size = 2
    end
    object qrFilterHarigTrg: TStringField
      DisplayLabel = #1495#1512#1497#1490#1492' '#1488#1495#1512#1514
      FieldName = 'HarigTrg'
      Size = 2
    end
    object qrFilterRemark: TStringField
      DisplayLabel = #1492#1506#1512#1493#1514
      FieldName = 'Remark'
    end
    object qrFilterShemD: TStringField
      DisplayLabel = #1513#1501' '#1492#1504#1492#1490
      FieldName = 'ShemD'
      Size = 25
    end
    object qrFilterNumber: TStringField
      DisplayLabel = #1502#1505#1508#1512' '#1512#1513#1497#1493#1503
      FieldName = 'Number'
      Size = 9
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
  end
end
