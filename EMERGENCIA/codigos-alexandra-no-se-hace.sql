/* permite identificar la digferencia entre base de datos y el reporte de emergencia : Atenciones por Especialidad por Grupo Etareo */


use SIGSALUD 
declare @lcfechainicio datetime = convert(datetime, '2015-10-01', 101)
declare @lcfechafin datetime = convert(datetime, '2015-10-31', 101)

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and CIEX1 <> '0' and codgrupo = '0' order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and CIEX1 <> '0'  order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and codgrupo = '0' order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and CIEX1 <> '0' and codgrupo = '0' order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and codgrupo = '0' order by CIEX1 asc


select * from emergencia where fecha between @lcfechainicio and @lcfechafin and CIEX1 <> '0' order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between @lcfechainicio and @lcfechafin and CIEX1 <> '0' order by CIEX1 asc

select ciex1, CODGRUPO from emergencia where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CIEX1 <> '0' and 
CODGRUPO = '0'
group by CODGRUPO order by CODGRUPO asc


CODGRUPO <> '0'


select CODGRUPO, COUNT(CODGRUPO) as cuenta  from emergencia where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CODGRUPO <> '0' 
 group by CODGRUPO order by cuenta asc


select CIEX1, CODGRUPO from emergencia where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CODGRUPO <> '0' 
order by CIEX1 asc
 

select * from emergencia where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CIEX1 like '%no se%'



select *, CIEX1, CODGRUPO from emergencia where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CIEX1 <> '0' and
 CODGRUPO = '0' 


select consultorio from EMERGENCIA where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CIEX1 <> '0' and CONSULTORIO <> ''
 order by CONSULTORIO asc
 
 
 select consultorio from EMERGENCIA where fecha between CONVERT(datetime, '2015-10-01', 101) and CONVERT(datetime, '2015-10-31', 101) and CIEX1 <> '0' and CONSULTORIO <> ''
 group by CONSULTORIO