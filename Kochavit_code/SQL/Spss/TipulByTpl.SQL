SELECT Tipul, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Tipul
ORDER BY Tipul