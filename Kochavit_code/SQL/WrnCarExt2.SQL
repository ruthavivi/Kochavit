SELECT Id, CarId, Tipul, DateToDo, Number, Type, Hp, Shem, TelC, Cr.Contact, Cr.Tel, Profesion, ZeutP
FROM KCrTipul Ct         
LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id                   
LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id
LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id
LEFT JOIN KTblTipul tT ON Ct.TipulId = tT.Id