inherited dmDriverFilter: TdmDriverFilter
  OldCreateOrder = True
  inherited qrFilter: TEDBQuery
    ReadOnly = True
    SQL.Strings = (
      
        'SELECT Dr.*, Licence, Oved, Shem, Hp, Isuv, Tel1, Tel2, Cl.Email' +
        ', Cl.EmailX'
      'FROM KDriver Dr                              '
      'LEFT JOIN KTblLicence tL ON (Dr.LicenceId = tL.Id)       '
      'LEFT JOIN KTblOved tV ON (Dr.OvedId = tV.Id)'
      'LEFT JOIN KClient Cl ON (Dr.ClientId = Cl.Id)')
    object qrFilterId: TIntegerField
      FieldName = 'Id'
    end
    object qrFilterCodDrv: TIntegerField
      DisplayLabel = #1502#1505#39' '#1505#1497#1491#1493#1512#1497
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
    object qrFilterKtovetD: TStringField
      DisplayLabel = #1499#1514#1493#1489#1514
      FieldName = 'KtovetD'
      Size = 25
    end
    object qrFilterIsuvD: TStringField
      DisplayLabel = #1497#1513#1493#1489
      FieldName = 'IsuvD'
      Size = 15
    end
    object qrFilterMikudD: TIntegerField
      DisplayLabel = #1502#1497#1511#1493#1491
      FieldName = 'MikudD'
    end
    object qrFilterTelD: TStringField
      DisplayLabel = #1496#1500#1508#1493#1503
      FieldName = 'TelD'
      Size = 11
    end
    object qrFilterCelD: TStringField
      DisplayLabel = #1504#1497#1497#1491
      FieldName = 'CelD'
      Size = 11
    end
    object qrFilterEMail: TStringField
      DisplayLabel = #1488#1497#1502#1488#1497#1497#1500
      FieldName = 'EMail'
      Size = 30
    end
    object qrFilterBorn: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1500#1497#1491#1492
      FieldName = 'Born'
    end
    object qrFilterLicenceNum: TStringField
      DisplayLabel = #1502#1505#39' '#1512#1513#1497#1493#1503
      FieldName = 'LicenceNum'
      Size = 7
    end
    object qrFilterLicence: TStringField
      DisplayLabel = #1505#1493#1490' '#1512#1513#1497#1493#1503
      FieldName = 'Licence'
      Size = 3
    end
    object qrFilterLicenceId: TIntegerField
      FieldName = 'LicenceId'
    end
    object qrFilterLicencePrd: TSmallintField
      DisplayLabel = #1513#1504#1514' '#1492#1504#1508#1511#1492
      FieldName = 'LicencePrd'
    end
    object qrFilterLimit: TStringField
      DisplayLabel = #1502#1490#1489#1500#1493#1514
      FieldName = 'Limit'
      Size = 30
    end
    object qrFilterWorkStrt: TDateField
      DisplayLabel = #1514#1495#1497#1500#1514' '#1506#1489#1493#1491#1492
      FieldName = 'WorkStrt'
    end
    object qrFilterOvedId: TSmallintField
      FieldName = 'OvedId'
    end
    object qrFilterRemark: TStringField
      FieldName = 'Remark'
      Size = 120
    end
    object qrFilterClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object qrFilterFreze: TBooleanField
      FieldName = 'Freze'
    end
    object qrFilterMissing: TBooleanField
      FieldName = 'Missing'
    end
    object qrFilterPail: TBooleanField
      FieldName = 'Pail'
    end
    object qrFilterStamp: TDateTimeField
      FieldName = 'Stamp'
    end
    object qrFilterShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
    object qrFilterHp: TIntegerField
      DisplayLabel = #1495'.'#1508'.'
      FieldName = 'Hp'
    end
    object qrFilterIsuv: TStringField
      DisplayLabel = #1497#1513#1493#1489' '#1495#1489#1512#1492
      FieldName = 'Isuv'
      Size = 15
    end
    object qrFilterTel1: TStringField
      DisplayLabel = #1496#1500'. '#1495#1489#1512#1492' 1'
      FieldName = 'Tel1'
      Size = 12
    end
    object qrFilterTel2: TStringField
      DisplayLabel = #1496#1500'. '#1495#1489#1512#1492' 2'
      FieldName = 'Tel2'
      Size = 11
    end
    object qrFilterOved: TStringField
      DisplayLabel = #1502#1496#1508#1500' '#1488#1495#1512#1488#1497
      FieldName = 'Oved'
      Size = 25
    end
    object qrFilterLicenceTyp: TStringField
      FieldName = 'LicenceTyp'
      Size = 10
    end
    object qrFilterEmail1: TStringField
      FieldName = 'Email1'
      Size = 30
    end
    object qrFilterEmailX: TStringField
      FieldName = 'EmailX'
      Size = 30
    end
  end
end
