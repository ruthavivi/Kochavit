SELECT Cl.Id ClientId, Ct.Id, Ct.DateToDo, tL.Tipul, tT.Type, Cr.CodCar, Cr.Number, Cr.Contact, Cr.Tel, Cl.Shem, Cl.Tel1, tOv.Oved, tAt.Atar, Ct.Problem, Ct.NoBkr NoBkrA, tP.Producer, tD.Dgam, Cl.Tel2, Cl.Hp, Cl.Isuv, tOc.Oved OvedCl, Cr.Spido, Cl.Dept, Ct.DateDone, Ct.Remark, Cr.Remark RemarkCar, Cr.CodSecure, Cr.WeightT, Ct.CarId, Cl.Cod, Cr.CodCar, Cl.Contact AS ContactCl, Cl.TelC, tOp.OfenPay, Cr.Model, Cl.Profesion, Cl.TelP
FROM KCrTipul Ct
LEFT JOIN KCar Cr ON Ct.CarId = Cr.Id
LEFT JOIN KTblTipul tL ON tL.Id = Ct.TipulId
LEFT JOIN KTblType tT ON tT.Id = Cr.TypeId
LEFT JOIN KTblProducer tP ON (Cr.ProducerId = tP.Id)
LEFT JOIN KTblDgam tD ON (Cr.DgamId = tD.Id)
LEFT JOIN KTblOved tOv ON tOv.Id = Cr.OvedId
LEFT JOIN KTblAtar tAt ON tAt.Id = Cr.AtarId
LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId
LEFT JOIN KTblOved tOc ON tOc.Id = Cl.OvedId
LEFT JOIN KTblOfenPay tOp ON (Cl.OfenPayId = tOp.Id)