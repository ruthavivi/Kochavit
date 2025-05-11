SELECT Ac.*, CodCar, Number, Type, Producer, Cod, Shem
FROM KCrAcdnt Ac
  LEFT JOIN KCar Cr ON Ac.CarId = Cr.Id
    LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id
    LEFT JOIN KTblProducer tR ON Cr.ProducerId = tR.Id
    LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
