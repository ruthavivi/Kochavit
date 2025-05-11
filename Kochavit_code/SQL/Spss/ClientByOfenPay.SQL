SELECT OfenPay, COUNT(Id) Num
FROM ( pBaseSql ) AS BaseSql
GROUP BY OfenPay
ORDER BY OfenPay