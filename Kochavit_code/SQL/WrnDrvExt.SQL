SELECT Id, DateDone, DateToDo, Heiter, ShemD, Zeut, TelD, Shem, Hp, Tel1, Tel2, CelD, Oved, Isuv, LicenceTyp, LicenceNum, DriverId, Contact, Dept, CodDrv
FROM KDrHeiter Dh
LEFT JOIN KDriver Dr ON Dh.DriverId = Dr.Id
LEFT JOIN KClient Cl ON Dr.ClientId = Cl.Id
LEFT JOIN KTblHeiter tH ON Dh.HeiterId = tH.Id
LEFT JOIN KTblLicence tL ON Dr.LicenceId = tL.Id
LEFT JOIN KTblOved tV ON Dr.OvedId = tV.Id 

