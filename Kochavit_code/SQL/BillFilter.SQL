SELECT Bl.*, Shem, Isuv, Tel1, Tel2, Fax, Email, EmailX, ACounter, TelA, IF (Payd THEN '��' ELSE '��') AS PaydTrg, Oved, Cod
FROM KBill Bl
LEFT JOIN KClient Cl ON Bl.ClientId = Cl.Id
LEFT JOIN KTblOved O ON Cl.OvedId = O.Id