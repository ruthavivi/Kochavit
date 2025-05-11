SELECT Cod, Shem, Oved, Number, Type, Contact, Tel, Atar,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 1 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Jan_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 2 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Feb_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 3 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Mar_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 4 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Apr_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 5 THEN EXTRACT(DAY FROM DateDone) else
Null)) as May_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 6 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Jun_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 7 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Jul_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 8 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Aug_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 9 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Sep_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 10 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Oct_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 11 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Nov_Day,
MAX(IF(EXTRACT(MONTH FROM DateDone) = 12 THEN EXTRACT(DAY FROM DateDone) else
Null)) as Dec_Day
FROM TipulYear
