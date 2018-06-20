declare @lfecha1 datetime = convert(datetime, '2015-06-01',101)
declare @lfecha2 datetime = convert(datetime, '2015-06-30',101)


select CITA.MEDICO, COUNT(CITA.MEDICO) AS ATENCIONES  from CITA where FECHA_PROGRAMACION between @lfecha1 and @lfecha2 and estado ='4' and consultorio in ('5050','5010','5011') 
 GROUP BY MEDICO order by MEDICO asc
 
SELECT MEDICO, NOMBRE FROM MEDICO WHERE MEDICO IN (select CITA.MEDICO  from CITA where FECHA_PROGRAMACION between @lfecha1 and @lfecha2 and estado ='4' and consultorio in ('5050','5010','5011') GROUP BY MEDICO)
  order by medico.NOMBRE asc

        
 