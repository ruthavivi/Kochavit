SELECT ClientId, Cod, Shem, Oved, SUM(NumAll) AS NumAll, SUM(NumNo) AS NumNo, SUM(NumYes) AS NumYes, SumPrClient, Msira
FROM (
SELECT ClientId, Cod, Shem, Oved, COUNT(Id) AS NumAll,
IF (Engine = '��' THEN COUNT(Engine) ELSE NULL) AS NumNo,
IF (Engine = '��' THEN COUNT(Engine) ELSE NULL) AS NumYes,
SUM(Shum) AS SumPrClient, 
IF (Msira = TRUE THEN '��' ELSE '��') AS Msira
FROM KCAR Cr                 
LEFT JOIN KClient Cl ON Cr.ClientId = Cl.Id 
LEFT JOIN KTblType tT ON Cr.TypeId = tT.Id 
LEFT JOIN KTblOved tV ON Cr.OvedId = tV.Id 
