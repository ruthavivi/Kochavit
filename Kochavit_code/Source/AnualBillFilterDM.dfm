inherited dmAnualBillFilter: TdmAnualBillFilter
  OldCreateOrder = True
  inherited qrFilter: TEDBQuery
    ReadOnly = True
    SQL.Strings = (
      
        'SELECT ClientId, Cod, Shem, Oved, SUM(NumAll) AS NumAll, SUM(Num' +
        'No) AS NumNo, SUM(NumYes) AS NumYes, SumPrClient, Msira'
      'FROM ('
      'SELECT ClientId, Cod, Shem, Oved, COUNT(Id) AS NumAll,'
      'IF (Engine = '#39#1500#1488#39' THEN COUNT(Engine) ELSE NULL) AS NumNo,'
      'IF (Engine = '#39#1499#1503#39' THEN COUNT(Engine) ELSE NULL) AS NumYes,'
      'SUM(Shum) AS SumPrClient, '
      'IF (Msira = TRUE THEN '#39#1499#1503#39' ELSE '#39#1500#1488#39') AS Msira'
      'FROM KCAR Cr                 '
      'LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id '
      'LEFT JOIN KTblType tT ON Cr.TypeId = tT.Id '
      'LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id '
      'GROUP BY ClientId, Engine) AS BASE'
      'GROUP BY ClientId'
      'ORDER BY Shem')
    object qrFilterCod: TIntegerField
      DisplayLabel = #1502#1505#39' '#1495#1489#1512#1492
      FieldName = 'Cod'
      Origin = 'BASE1.Cod'
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Origin = 'BASE1.Shem'
      Size = 30
    end
    object qrFilterOved: TStringField
      DisplayLabel = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497
      FieldName = 'Oved'
      Origin = 'BASE1.Oved'
      Size = 25
    end
    object qrFilterSumPrClient: TFloatField
      DisplayLabel = #1505#1492'"'#1499' '#1495#1493#1491#1513#1497
      FieldName = 'SumPrClient'
      Origin = 'BASE1.SumPrClient'
      currency = True
    end
    object qrFilterClientId: TIntegerField
      FieldName = 'ClientId'
      Origin = 'BASE1.ClientId'
    end
    object qrFilterNumAll: TLargeintField
      DisplayLabel = #1505#1492'"'#1499' '#1512#1499#1489#1497#1501
      FieldName = 'NumAll'
    end
    object qrFilterNumNo: TLargeintField
      DisplayLabel = #1504#1490#1512#1512#1497#1501
      FieldName = 'NumNo'
    end
    object qrFilterNumYes: TLargeintField
      DisplayLabel = #1502#1502#1493#1504#1506
      FieldName = 'NumYes'
    end
    object qrFilterMsira: TStringField
      DisplayLabel = #1502#1505#1497#1512#1492' '#1489#1491#1493#1488#1512
      FieldName = 'Msira'
      Origin = 'BASE1.Msira'
      Size = 2
    end
  end
end
