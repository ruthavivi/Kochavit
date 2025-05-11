SELECT Id, Moed, IF (Speed THEN 'λο' ELSE '') AS SpeedTrg, IF (Zman THEN 'λο' ELSE '') AS ZmanTrg, IF (Harig THEN 'λο' ELSE '') AS HarigTrg, Remark, ShemD, Number, Shem
FROM KDrTaho Dt
  LEFT JOIN KDriver Dr ON Dt.DriverId = Dr.Id
  LEFT JOIN KCar Cr ON Dt.CarId = Cr.Id
    LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id

