SELECT Ty.Type, COUNT(Ca.Id) Num 
FROM KCrAcdnt Ca 
LEFT JOIN KCar Cr ON Cr.Id = Ca.CarId 
LEFT JOIN KTblType Ty ON Ty.Id = Cr.TypeId 
GROUP BY Ty.Type 
ORDER BY Ty.Type