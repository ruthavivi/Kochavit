inherited dmCourseFilter: TdmCourseFilter
  inherited qrFilter: TEDBQuery
    SQL.Strings = (
      'SELECT StartD, EndD, Organize, Course, ShemD, Zeut, Shem'
      'FROM KDrCourse Dc'
      '   LEFT JOIN KDriver Dr ON Dc.DriverId = Dr.Id'
      '         LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id'
      '   LEFT JOIN KTblCourse tC ON Dc.CourseId = tC.Id')
    ReadOnly = True
    object qrFilterStartD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1514#1495#1497#1500#1492
      FieldName = 'StartD'
    end
    object qrFilterEndD: TDateField
      DisplayLabel = #1514#1488#1512#1497#1498' '#1505#1497#1493#1501
      FieldName = 'EndD'
    end
    object qrFilterCourse: TStringField
      DisplayLabel = #1513#1501' '#1492#1511#1493#1512#1505
      FieldName = 'Course'
      Size = 25
    end
    object qrFilterOrganize: TStringField
      DisplayLabel = #1490#1493#1507' '#1502#1488#1512#1490#1503
      FieldName = 'Organize'
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
