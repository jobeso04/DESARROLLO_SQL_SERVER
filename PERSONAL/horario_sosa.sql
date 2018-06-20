use BDPERSONAL
select * from MAESTRO where NOMBRE like 'sosa%'
select * from asistencia where CODIGO = '084123' and MES = 1 and AÑO = 2016 and CODACT = 'M3'

update asistencia set CODACT = 'M4' where CODIGO = '084123' and MES = 1 and AÑO = 2016 and CODACT = 'M3'