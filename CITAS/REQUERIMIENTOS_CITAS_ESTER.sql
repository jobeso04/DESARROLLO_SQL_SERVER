use SIGSALUD
select NOMBRE_CONSULTORIO, COUNT(nombre_consultorio) as ATENCIONES  from V_CITA where ESTADO = '4' and month(FECHA_OTORGA) =  1 and YEAR(fecha) = 2016 
group by NOMBRE_CONSULTORIO order by NOMBRE_CONSULTORIO asc


select * from cita

select *  from v_CITA where ESTADO = '1' and month(FECHA_PROGRAMACION) =  7 and YEAR(FECHA_PROGRAMACION) = 2016 and day(FECHA_PROGRAMACION)= 27


select *  from v_CITA where ESTADO = '1' and month(FECHA_PROGRAMACION) =  7 and YEAR(FECHA_PROGRAMACION) = 2016 and day(FECHA_PROGRAMACION)= 27

