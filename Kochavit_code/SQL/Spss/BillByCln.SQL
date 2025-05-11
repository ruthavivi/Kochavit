SELECT Shem, SUM(SumA) Num
FROM ( pBaseSql ) AS BaseSql
GROUP BY Shem
ORDER BY Shem
