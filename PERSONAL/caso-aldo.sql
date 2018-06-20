use BDPERSONAL
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid = 27
/* update ASISTENCIA set INDICADOR = '1' where MES = 5 and AÑO = 2016 and IdServDepartUnid = 27
update ASISTENCIA set IdServDepartUnid  = 27 where MES = 5 and AÑO = 2016 and CODIGO = '084642' */



use BDPERSONAL

/*select * from ASISTENCIA where IdServDepartUnid  = 27 and MES = 5 and AÑO = 2016
update ASISTENCIA set indicador = '4' where IdServDepartUnid  = 27 and MES = 5 and AÑO = 2016  */
use BDPERSONAL
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and CODIGO = '054130'




use BDPERSONAL 
select * from dbo.ServicioMaestro where CODIGO = '054130'