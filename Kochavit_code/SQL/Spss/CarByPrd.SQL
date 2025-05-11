SELECT Producer, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Producer
ORDER BY Producer