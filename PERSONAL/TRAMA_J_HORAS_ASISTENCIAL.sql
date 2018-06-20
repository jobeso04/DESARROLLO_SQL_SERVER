/* buscado las actividades por medico, resumen por departamento - servicio */
 declare @lc_iddepartamento INT = 14
     DECLARE @lnanio INT = 2017
     declare @lnmes int = 11
     declare @lc_servicios_de_departamento table (IdServDepartUnid int)
     insert into @lc_servicios_de_departamento
     SELECT IdServDepartUnid FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] WHERE IdDepartUnid = @lc_iddepartamento 
      select CODIGO, IdServDepartUnid from [BDPERSONAL].[dbo].[ASISTENCIA]  
        where MES =  @lnmes and AÑO = @lnanio and IdServDepartUnid in (SELECT IdServDepartUnid FROM @lc_servicios_de_departamento) group by CODIGO, IdServDepartUnid 
          order by CODIGO asc
                    
-----------------------------

SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDADES] WHERE NOMBRE LIKE 'CONSUL%'

SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'GASPAR%'

TRUNCATE TABLE [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]
declare @lccodigo varchar(13) = '054030'
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
--- INSERT INTO [BDPERSONAL].[dbo].[TMP_CUENTA_CEM_MEDICO]
select ID_ACTIVIDAD, SUM(HORAS) as tt from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where Anio = @lnanio  and	mes = @lnmes  and codigo = @lccodigo
group by id_actividad 

select 96 + 6 + 48

select * from actividades WHERE ACTIVO = '1'

use bdpersonal
select * from maestro where codigo = '084096'

SELECT	'DIA' + convert(varchar(2), ROW_NUMBER() OVER(order by dia)) AS NUMERO_DIA, 
   ISNULL(([BDPERSONAL].[dbo].[FN_ACTIVIDAD_ASIST_1](DIA, @lnmes, @lnanio,  @lccodigo, @lcactividad) ),0) as CEM
        FROM [BDPERSONAL].[dbo].[ASISTENCIA]  where	AÑO = @lnanio  and	mes = @lnmes  and codigo = @lccodigo  order by dia
        


select ID_ACTIVI* from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]        

select ID_ACTIVI* from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]        
