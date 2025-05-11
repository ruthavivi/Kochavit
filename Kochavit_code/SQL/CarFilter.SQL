SELECT Cr.*, Type, Engine, Producer, Dgam, Cargo, Oved, Atar, HP, Shem, Ktovet, Isuv, Mikud, Tel1, Tel2, EMail, EMailX, Hamas, ZeutH, KtovetP, SizeP, OfenPay, Cl.Cod, Insure
FROM KCar Cr
        LEFT JOIN KTblType tT ON tT.Id = Cr.TypeId
        LEFT JOIN KTblProducer tP ON tP.Id = Cr.ProducerId
        LEFT JOIN KTblDgam tD ON tD.Id = Cr.DgamId
        LEFT JOIN KTblCargo tC ON tC.Id = Cr.CargoId
        LEFT JOIN KTblOved tV ON tV.Id = Cr.OvedId
        LEFT JOIN KTblAtar tA ON tA.Id = Cr.AtarId
        LEFT JOIN KClient Cl ON Cl.Id = Cr.ClientId
        LEFT JOIN KTblOfenPay tO ON Cl.OfenPayId = tO.Id
        LEFT JOIN KTblInsure tI ON Cr.InsureId = tI.Id