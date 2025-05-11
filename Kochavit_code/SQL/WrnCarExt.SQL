SELECT Id, CarId, Tipul, DateToDo, Number, Type, Hp, Shem, Atar, Isuv, Cl.Contact AS ContactCl, TelC, Cr.Contact, Producer, Cr.Tel, Ct.Remark, ZeutM, OfenPay
FROM KCrTipul Ct         
LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id                   
LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
LEFT JOIN KTblType tY ON Cr.TypeId = tY.Id
LEFT JOIN KTblProducer tP ON Cr.ProducerId = tP.Id
LEFT JOIN KTblAtar tA ON Cr.AtarId = tA.Id      
LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id
LEFT JOIN KTblTipul tT ON Ct.TipulId = tT.Id
LEFT JOIN KTblOfenPay tO ON Cl.OfenPayId = tO.Id