inherited dmDriverListArhiv: TdmDriverListArhiv
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 164
  Width = 176
  inherited qrList: TEDBQuery
    BeforeOpen = qrListBeforeOpen
    AfterOpen = qrListAfterRefresh
    AfterRefresh = qrListAfterRefresh
    SQL.Strings = (
      'SELECT Id, CodDrv, ShemD, Zeut, Shem, LicenceNum'
      'FROM KDriver Dr'
      'LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id'
      'WHERE Dr.Pail = False'
      'ORDER BY ShemD')
    Top = 24
    object qrListId: TIntegerField
      FieldName = 'Id'
    end
    object qrListCodDrv: TIntegerField
      DisplayLabel = #1511#1493#1491' '#1504#1492#1490
      FieldName = 'CodDrv'
    end
    object qrListShemD: TStringField
      DisplayLabel = #1513#1501' '#1504#1492#1490
      FieldName = 'ShemD'
      Size = 25
    end
    object qrListZeut: TStringField
      DisplayLabel = #1514'. '#1494#1492#1493#1514
      FieldName = 'Zeut'
      Size = 11
    end
    object qrListShem: TStringField
      DisplayLabel = #1513#1501' '#1492#1495#1489#1512#1492
      FieldName = 'Shem'
      Size = 30
    end
    object qrListLicenceNum: TStringField
      DisplayLabel = #1502#1505#1508#1512' '#1512#1497#1513#1497#1493#1503
      FieldName = 'LicenceNum'
      Size = 7
    end
  end
end
