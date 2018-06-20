use SIGSALUD
select * from CITA where CONSULTORIO = '2028' and FECHA = CONVERT(datetime, '2017-01-27', 101) order by FECHA_PROGRAMACION asc