SELECT Ch.*, Bank, IF (Nifda THEN '��' ELSE '��') AS NifdaTrg, IF (Return THEN '��' ELSE '��') AS ReturnTrg, Shem, Tel1, Tel2, ACounter, TelA
FROM KChecks Ch
LEFT JOIN KClient Cl ON Ch.ClientId = Cl.Id
LEFT JOIN KTblBank tB ON Ch.BankId = tB.Id