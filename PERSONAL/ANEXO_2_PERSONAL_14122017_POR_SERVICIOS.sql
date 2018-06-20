/* Seleccion de medicos por mes en servicio */

 DECLARE @lnanio INT = 2017
 declare @lnmes int = 10
 declare @lc_iddepartamento INT = 14
 declare @lc_idservicio INT = 41
 select CODIGO from [BDPERSONAL].[dbo].[ASISTENCIA]  where MES =  @lnmes and AÑO = @lnanio and IdServDepartUnid = @lc_idservicio group by CODIGO, IdServDepartUnid  order by CODIGO asc
          
-----------------------------

/* dado un medico seleccion de todas sus actividades */

TRUNCATE TABLE  [BDPERSONAL].[dbo].[TMP_HORAS_POR_MEDICO]
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
declare @lccodigo varchar(13) = '084357'
declare @lc_nombre_medico varchar(250) = (select NOMBRE  from [BDPERSONAL].[dbo].[MAESTRO] where codigo = @lccodigo)
-- INSERT [BDPERSONAL].[dbo].[TMP_HORAS_POR_MEDICO]
select @lccodigo AS codigo, @lc_nombre_medico as medico, ID_ACTIVIDAD, SUM(HORAS) as TOTAL_HORAS 
 from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where Anio = @lnanio  and	mes = @lnmes  and codigo = @lccodigo
group by id_actividad 


 select * from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] 
  where CODIGO = '084357' and MES = 10 and ANIO = 2017
  order by ID_ACTIVIDAD
  
  


select TOP 1 CODIGO, MEDICO from [BDPERSONAL].[dbo].[TMP_HORAS_POR_MEDICO]

select total_horas from [BDPERSONAL].[dbo].[TMP_HORAS_POR_MEDICO] where id_actividad = '1'

SELECT [ID_ACTIVIDAD]
      ,[NOMBRE]
      ,[ABREVIATURA]
      ,[ACTIVO]
      ,[TITULO]
      ,[SUBTITULO]
  FROM [BDPERSONAL].[dbo].[ACTIVIDADES] where ACTIVO = '1'
  
  
  SELECT ROW_NUMBER() OVER(ORDER BY nombre_medico  ASC) AS NRO, [NOMBRE_MEDICO],[CEX],[PRO],[VMH],[SOP],[COB],[EMG],[INTR],[JUN],[TEM],[AUD],[CMT],[RYC],[CAP],[IEC],[INV],[ADM],[MOR],[SUP],[TOTAL]
 FROM [BDPERSONAL].[dbo].[TMP_ANEXO2_PERSONAL] where total <>  0 order by nombre_medico  
 
 
 /*
 
 SELECT * FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE CODIGO = '054038'*/
 
 