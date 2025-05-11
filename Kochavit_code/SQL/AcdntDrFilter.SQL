SELECT Id, AcdntD, WithInjr, Quilty, Tipul, ShemD, Zeut, Number, Shem
FROM KDrAcdnt Da
  LEFT JOIN KDriver Dr ON Da.DriverId = Dr.Id 
  LEFT JOIN KCar Cr ON Da.CarId = Cr.Id
    LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id