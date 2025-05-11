SELECT Dr.*, Licence, Oved, Shem, Hp, Isuv, Tel1, Tel2, Cl.Email, Cl.EmailX
FROM KDriver Dr                              
LEFT JOIN KTblLicence tL ON (Dr.LicenceId = tL.Id)       
LEFT JOIN KTblOved tV ON (Dr.OvedId = tV.Id)
LEFT JOIN KClient Cl ON (Dr.ClientId = Cl.Id)
