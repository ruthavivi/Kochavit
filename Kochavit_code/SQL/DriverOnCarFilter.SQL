SELECT Id, CodDrv, Zeut, ShemD, Licence, CodCar, Number, Type, Producer, Cod, Shem, Oved
FROM KCrDrv Dc
  LEFT JOIN KCar Cr ON Dc.CarId = Cr.Id
    LEFT JOIN KTblType tY ON Cr.TypeId =  tY.Id
    LEFT JOIN KTblProducer tR ON Cr.ProducerId = tR.Id
    LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
  LEFT JOIN KTblOved Tm ON Cr.OvedId = Tm.Id
  LEFT JOIN KDriver Dr ON Dc.DriverId = Dr.Id         
    LEFT JOIN KTblLicence tL ON Dr.LicenceId = tL.Id
