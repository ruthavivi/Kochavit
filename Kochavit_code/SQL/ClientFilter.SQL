SELECT Cl.*, Oved, OfenPay, Msira, COUNT(Id) AS CarNum, SUM(Shum) AS CarSum, SUM(Shum) / COUNT(Id) AS ShumPerCar
FROM KClient Cl        
LEFT JOIN KTblOved tV ON Cl.OvedId = tV.Id
LEFT JOIN KTblOfenPay tP ON Cl.OfenPayId = tP.Id
LEFT JOIN KCar Cr ON (Cl.Id = Cr.ClientId AND Cr.Pail = True)      
