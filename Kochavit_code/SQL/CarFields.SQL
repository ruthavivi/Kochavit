SELECT Cr.*, Type, Producer, Dgam, Cargo, Oved, Insure, Atar, Cl.*
FROM KCar Cr
        LEFT JOIN KTblType tT ON Cr.TypeId = tT.Id
        LEFT JOIN KTblProducer tP ON Cr.ProducerId = tP.Id
        LEFT JOIN KTblDgam tD ON Cr.DgamId = tD.Id
        LEFT JOIN KTblCargo tC ON Cr.CargoId = tC.Id
        LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id
        LEFT JOIN KTblInsure tI ON Cr.InsureId = tI.Id
        LEFT JOIN KTblAtar tA ON Cr.AtarId = tA.Id
        LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id
