SELECT Id, Heiter, DateDone, CodDrv, ShemD, Zeut, Cod, Shem, Oved
FROM KDrHeiterHis Dh
  LEFT JOIN KDriver Dr ON Dh.DriverId = Dr.Id
    LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id
  LEFT JOIN KTblHeiter tH ON Dh.HeiterId = tH.Id
  LEFT JOIN KTblOved Tm ON Dr.OvedId = Tm.Id


