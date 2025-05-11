SELECT Id, DateDone, DateToDo, Tipul, Number, Type, Cl.Contact, Tel, Shem, Hp, Tel1, Tel2, Oved, Atar, Producer, Isuv, Cr.Remark, Dept, Km, ClientId
FROM KCrTipul Ct         
LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id                   
LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
LEFT JOIN KTblTipul tT ON Ct.TipulId = tT.Id
LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id
LEFT JOIN KTblAtar tA ON Cr.AtarId = tA.Id      
LEFT JOIN KTblProducer tP ON Cr.ProducerId = tP.Id
LEFT JOIN KTblOved tV ON Cl.OvedId = tV.Id 

