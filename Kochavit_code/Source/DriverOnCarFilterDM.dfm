inherited dmDriverOnCarFilter: TdmDriverOnCarFilter
  Height = 245
  Width = 256
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      
        'SELECT Id, CodDrv, Zeut, ShemD, Licence, CodCar, Number, Type, P' +
        'roducer, Cod, Shem, Oved'
      'FROM KCrDrv Dc'
      '  LEFT JOIN KCar Cr ON Dc.CarId = Cr.Id'
      '    LEFT JOIN KTblType tY ON Cr.TypeId =  tY.Id'
      '    LEFT JOIN KTblProducer tR ON Cr.ProducerId = tR.Id'
      '    LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id'
      '  LEFT JOIN KTblOved Tm ON Cr.OvedId = Tm.Id'
      '  LEFT JOIN KDriver Dr ON Dc.DriverId = Dr.Id         '
      '    LEFT JOIN KTblLicence tL ON Dr.LicenceId = tL.Id')
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterCodDrv: TIntegerField
      DisplayLabel = #1511#1493#1491' '#1504#1492#1490
      FieldName = 'CodDrv'
    end
    object qrFilterZeut: TStringField
      DisplayLabel = #1514'. '#1494#1492#1493#1514
      FieldName = 'Zeut'
      Size = 11
    end
    object qrFilterShemD: TStringField
      DisplayLabel = #1513#1501' '#1492#1504#1492#1490
      FieldName = 'ShemD'
      Size = 25
    end
    object qrFilterLicence: TStringField
      DisplayLabel = #1505#1493#1490' '#1512#1513#1497#1493#1503
      FieldName = 'Licence'
      Size = 3
    end
    object qrFilterCodCar: TIntegerField
      DisplayLabel = #1511#1493#1491' '#1512#1499#1489
      FieldName = 'CodCar'
    end
    object qrFilterNumber: TStringField
      DisplayLabel = #1502#1505#39' '#1512#1497#1513#1497#1493#1497
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
      DisplayLabel = #1511#1493#1491' '#1495#1489#1512#1492
      FieldName = 'Cod'
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
    object qrFilterOved: TStringField
      DisplayLabel = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497
      FieldName = 'Oved'
      Size = 25
    end
  end
  object dsFilter: TDataSource
    DataSet = qrFilter
    Left = 144
    Top = 32
  end
end
