SELECT Cargo, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Cargo
ORDER BY Cargo