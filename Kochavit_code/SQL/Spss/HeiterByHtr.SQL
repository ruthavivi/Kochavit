SELECT Heiter, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Heiter
ORDER BY Heiter