select * from ARCHIVO_MOV where FECHA = CONVERT(datetime, '2015-12-21',101)  and MEDICO = 'RMJ'


select * from ARCHIVO_MOV where FECHA = CONVERT(datetime, '2015-12-21',101)  and NOMBRES like 'VICENTE%'

select * from CITA where FECHA = CONVERT(datetime, '2015-12-21',101)  and NOMBRE like 'VICENTE%'

select * from PAGOC where FECHA = CONVERT(datetime, '2015-12-21',101)  and NOMBRE like 'VICENTE%'

SELECT * FROM CONSULTORIO WHERE CONSULTORIO = '4042'
SELECT * FROM CONSULTORIO WHERE CONSULTORIO = '4041'