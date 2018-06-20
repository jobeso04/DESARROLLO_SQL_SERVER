/* VER CERRAR Y ABRIR UNIDADES PARA EL ROL DE GUARDIAS Y/O PERSONAL */

USE BDPERSONAL
/* SELECT * FROM dbo.ServicioDepartUnidad */

DECLARE @lcnombreunidad varchar(100) = 'SERVICIO DE GINECOLOGIA'
declare @lnanio int = 2016
declare @lnmes int = 4
declare @lccodigo varchar = ''

/* select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad */
/* select * from ASISTENCIA where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad)
select dni, codigo, nombre, UNIDAD_ORGANICA, SITUACION_LABORAL  from v_maestro where codigo in (select codigo from ASISTENCIA where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad)
  group by CODIGO) order by NOMBRE asc  */

/* Para Abrir el servicio   */ 
/* update ASISTENCIA set INDICADOR = '1' 
    where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad)
select * from ASISTENCIA where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad) */

/* Para Cerrar el servicio   */ 
 update ASISTENCIA set INDICADOR = '4' 
    where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad)
select * from ASISTENCIA where AÑO = @lnanio and MES = @lnmes and IdServDepartUnid in  (select IdServDepartUnid from dbo.ServicioDepartUnidad where Nombre = @lcnombreunidad) 
