SELECT ClId, Shem, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY ClId, Shem
ORDER BY Shem