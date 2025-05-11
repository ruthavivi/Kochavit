SELECT Oved, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Oved
ORDER BY Oved