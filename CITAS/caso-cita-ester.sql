use sigsalud

/* select * from CITA where FECHA between CONVERT(datetime, '2016-01-01', 101) and CONVERT(datetime, '2016-12-31', 101) order by 
*/


use SIGSALUD
select * from CONSULTORIO where nombre like '%infect%'


select * from CITA where CONSULTORIO = '1030' and MEDICO = 'MHT' ORDER BY FECHA_PROGRAMACION DESC


select * from CITA WHERE ESTADO = '3' ORDER BY FECHA DESC

select * from CITA where CITA_ID = '170083487'
select * from ARCHIVO_MOV where ID_CITA = '170083487'


update [SIGSALUD].[dbo].[CITA] set HORA = '16:30' where CITA_ID = '170099460'


SELECT * FROM CONSULTORIO_PARAMETRO WHERE CONSULTORIO = '1095'
SELECT * FROM CONSULTORIO_PARAMETRO WHERE CONSULTORIO = '1030'






SELECT * FROM [SIGSALUD].[dbo].[V_CITA] WHERE NOMBRE LIKE '%' + ?lcnombre + '%' ORDER BY FECHA DESC
               

