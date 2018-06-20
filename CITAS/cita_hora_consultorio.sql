/* Obtiene los consultorios en las Citas */

use sigsalud
declare @fecha_actual datetime = CONVERT(DATETIME, '2017-02-01', 101) /* fecha_actual, seleccionada */
declare @fecha1 datetime =  CONVERT(datetime, DATEADD(dd,-(DAY(@fecha_actual)-1),@fecha_actual),101) 
declare @fecha2 datetime
declare @ndias varchar(10)
set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')
select @fecha_actual FECHA_ACTUAL, @fecha1 FECHA_INICIAL, @fecha2 FECHA_FINAL, day(@fecha2) NUMERO_DE_DIAS 

 
/* 
DROP TABLE  TMP_CONSUL

*/


select * FROM TMP_CONSUL


/*
select consultorio, NOMBRE_CONSULTORIO from V_CITA where fecha BETWEEN @fecha1 and @fecha2 group by CONSULTORIO, NOMBRE_CONSULTORIO  
order by CONSULTORIO, NOMBRE_CONSULTORIO 
*/
/* 

select * from V_CITA */


