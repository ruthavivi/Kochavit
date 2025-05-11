SELECT Shem, SUM(CheckSum) Tot, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Shem
ORDER BY Shem
