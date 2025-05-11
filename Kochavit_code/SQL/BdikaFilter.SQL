SELECT Dk.*, ShemD, Zeut, Shem
FROM KDrBdika Dk
   LEFT JOIN KDriver Dr ON Dk.DriverId = Dr.Id
         LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id


