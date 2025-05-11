SELECT Engine, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Engine
ORDER BY Engine