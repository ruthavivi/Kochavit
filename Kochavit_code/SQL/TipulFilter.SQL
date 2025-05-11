SELECT Id, Tipul, DateDone, Km, Oved, NoBkr, Remark, CodCar, Number, Type, Producer, Cod, Shem, Cl.Id AS ClId
FROM KCrTipulHis Tp
  LEFT JOIN KCar Cr ON Cr.Id = Tp.CarId
    LEFT JOIN KTblType tY ON tY.Id = Cr.TypeId
    LEFT JOIN KTblProducer tR ON tR.Id = Cr.ProducerId
    LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId
  LEFT JOIN KTblTipul Tt ON Tt.Id = Tp.TipulId
  LEFT JOIN KTblOved Tm ON Tm.Id = Tp.OvedId
