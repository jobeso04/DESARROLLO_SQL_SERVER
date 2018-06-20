use sigsalud	
select * from cita where CONSULTORIO = '1015' and MEDICO = 'mad' and FECHA between  CONVERT(datetime, '2016-09-26', 101)
and  CONVERT(datetime, '2016-09-30', 101)  and estado = '1' order by FECHA_PROGRAMACION asc

delete from CITA where CONSULTORIO = '1015' and MEDICO = 'MAD' and FECHA between  CONVERT(datetime, '2016-09-26', 101)
and  CONVERT(datetime, '2016-09-30', 101)  and estado = '1'

select * from MEDICO where MEDICO = 'mad'