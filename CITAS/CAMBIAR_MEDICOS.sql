

select * from CITA where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'FLF'


FLF 

UPDATE CITA SET MEDICO = 'FLF' where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'LTA'

SELECT * FROM ARCHIVO_MOV

UPDATE CITA SET MEDICO = 'FLF' where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'LTA'


select CITA_ID from CITA where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'FLF'


SELECT * FROM ARCHIVO_MOV WHERE ID_CITA IN (select CITA_ID from CITA where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'FLF')

UPDATE CITA SET MEDICO = 'FLF' where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'LTA'
UPDATE ARCHIVO_MOV SET MEDICO = 'FLF' WHERE ID_CITA IN (select CITA_ID from CITA where FECHA = CONVERT(datetime, '2017-08-10', 101) and MEDICO = 'FLF')
