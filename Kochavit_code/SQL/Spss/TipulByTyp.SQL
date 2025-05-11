SELECT Type, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Type
ORDER BY Type