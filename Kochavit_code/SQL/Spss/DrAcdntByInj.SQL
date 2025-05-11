SELECT Da.WithInjr, COUNT(Da.Id) Num 
FROM KDrAcdnt Da 
GROUP BY Da.WithInjr 
ORDER BY Da.WithInjr 