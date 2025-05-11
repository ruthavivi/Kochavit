SELECT Da.Quilty, COUNT(Da.Id) Num 
FROM KDrAcdnt Da
GROUP BY Da.Quilty 
ORDER BY Da.Quilty 