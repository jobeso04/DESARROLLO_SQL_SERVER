use BDPERSONAL

select * from MAESTRO where nombre like '%cortez%'

select * from  dbo.ServicioMaestro where Codigo = '084037'

select * from ASISTENCIA where codigo = '084037' and MES = 7 and AÑO = 2016

select CODIGO from ASISTENCIA where IdServDepartUnid = '2' and MES = 7 and AÑO = 2016 group by CODIGO 

select * from maestro where codigo = '084271'
select * from maestro where codigo = '084037'

select * from ASISTENCIA where IdServDepartUnid = '2' and MES = 7 and AÑO = 2016

/* update ASISTENCIA SET INDICADOR = '4' where IdServDepartUnid = '2' and MES = 7 and AÑO = 2016 */

select CODIGO from ASISTENCIA where IdServDepartUnid = '2' and MES = 7 and AÑO = 2016 group by CODIGO 