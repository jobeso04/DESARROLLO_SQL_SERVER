use sigsalud
select HOSPITALIZACION_ID, PROCEDENCIA, HISTORIA, NOMBRES, Expr1 as seguro, FECHA1, Expr2 as servicio, dx1 
from V_HOSPITALIZACION where FECHA1 between CONVERT(datetime,'2017-07-01', 101) and CONVERT(datetime,'2017-07-31', 101) and
dx1 like 'k35%'


use sigsalud
select HOSPITALIZACION_ID, PROCEDENCIA, HISTORIA, NOMBRES, Expr1 as seguro, FECHA1, Expr2 as servicio, dx2 
from V_HOSPITALIZACION where FECHA1 between CONVERT(datetime,'2017-09-01', 101) and CONVERT(datetime,'2017-09-30', 101) and
dx2 like 'k81%'



order by Expr2, FECHA1


select * from V_HOSPITALIZACION 

select * from V_HOSPITALIZACION where FECHA1 between CONVERT(datetime,'2017-06-01', 101) and CONVERT(datetime,'2017-09-30', 101)

order by FECHA1 desc
 
 


select CONVERT(datetime,'2017-06-01', 101)