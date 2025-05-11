SELECT tC.Course, COUNT(Dc.Id) Num 
FROM KDrCourse Dc 
LEFT JOIN KTblCourse.db tC ON Dc.IdCourse = tC.Id 
GROUP BY tC.Course 
ORDER BY tC.Course 