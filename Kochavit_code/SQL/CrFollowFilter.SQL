SELECT Id, Moed, Sha, Remark, CodCar, Number, Type, Producer, Cod, Shem, Oved
FROM KCrFollow Cf
  LEFT JOIN KCar Cr ON Cr.Id = Cf.CarId
    LEFT JOIN KTblType tY ON tY.Id = Cr.TypeId
    LEFT JOIN KTblProducer tR ON tR.Id = Cr.ProducerId
    LEFT JOIN KTblOved tV ON tV.Id = Cr.OvedId
    LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId