SELECT Model, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Model
ORDER BY Model