SELECT Bank, SUM(CheckSum) Tot, COUNT(Id) Num 
FROM ( pBaseSql ) AS BaseSql
GROUP BY Bank
ORDER BY Bank