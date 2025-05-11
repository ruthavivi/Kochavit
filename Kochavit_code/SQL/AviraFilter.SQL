SELECT Da.*, ShemD, Zeut, Shem
FROM KDrAvira Da
   LEFT JOIN KDriver Dr ON Da.DriverId = Dr.Id
   LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id

