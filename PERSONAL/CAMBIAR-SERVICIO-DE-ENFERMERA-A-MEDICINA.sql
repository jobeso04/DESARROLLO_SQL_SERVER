/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [IdServDepartUnid]
      ,[IdDepartUnid]
      ,[Codigo]
      ,[Nombre]
      ,[Tipo]
      ,[Activo]
      ,[DniAcceso]
  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] where DniAcceso = '06808595'
  
  
  /* agregar servicio a otra unidad */
  
declare @lcunidadorigen varchar(3) = '19'
declare @lcidserdepartunidad varchar(4) = '118'

declare @lcunidaddestino varchar(10) = '14'
declare @lcdniacceso varchar(10) = '14'
    

 /* para el origen */
 SELECT [IdServDepartUnid],[IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso]  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad]
 where IdDepartUnid = '14'
 
 
 /* para destino */
 SELECT [IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso]   FROM [BDPERSONAL].[dbo].[DepartamentoUnidad]
 where  IdDepartUnid = '14'
 
 
 /* para hacer el cambio */
update [BDPERSONAL].[dbo].[ServicioDepartUnidad] set IdDepartUnid = '14', DniAcceso = '06808595'
 where IdDepartUnid = '14' and IdServDepartUnid = '118'


use bdpersonal
select * from asistencia where codigo = '054095' and MES = 11 and AÑO = 2017


yesenia cordova

eizabeth quito zavala

yesenia cordova jacinto



