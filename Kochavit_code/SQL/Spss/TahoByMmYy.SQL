SELECT EXTRACT(MONTH FROM Dt.Moed) AS MM, EXTRACT(YEAR FROM Dt.Moed) AS YY
FROM KDrTaho Dt
	LEFT JOIN KCar.db Cr ON Dt.CarId = Cr.Id
         	LEFT JOIN KClient.db Cl ON Cr.ClientId = Cl.Id
   	LEFT JOIN KDriver.db Dr ON Dt.DrvId = Dr.Id
WHERE (Dt.Speed = True or Dt.Zman = True or Dt.Harig = True)