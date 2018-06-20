/* Seleccion de medicos por mes */
/*
 DECLARE @lnanio INT = 2017
 declare @lnmes int = 10
 declare @lc_iddepartamento INT = 14
 declare @lc_servicios_de_departamento table (IdServDepartUnid int)
 insert into @lc_servicios_de_departamento
 SELECT IdServDepartUnid FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] WHERE IdDepartUnid = @lc_iddepartamento 
 select CODIGO, IdServDepartUnid from [BDPERSONAL].[dbo].[ASISTENCIA]  
      where MES =  @lnmes and AÑO = @lnanio and IdServDepartUnid in (SELECT IdServDepartUnid FROM @lc_servicios_de_departamento) group by CODIGO, IdServDepartUnid 
          order by CODIGO asc
-----------------------------
/* dado un medico seleccion de todas sus actividades */

select * from [BDPERSONAL].[dbo].[MAESTRO] where codigo = '054030'
*/
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
declare @lccodigo varchar(13) = '054030'
declare @lc_nombre_medico varchar(250) = (select NOMBRE  from [BDPERSONAL].[dbo].[MAESTRO] where codigo = @lccodigo)
select @lc_nombre_medico as MMEDICO, ID_ACTIVIDAD, SUM(HORAS) as tt from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where Anio = @lnanio  and	mes = @lnmes  and codigo = @lccodigo
group by id_actividad 

