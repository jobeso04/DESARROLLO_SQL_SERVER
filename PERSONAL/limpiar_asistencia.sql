


/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [IdServDepartUnid]
      ,[IdDepartUnid]
      ,[Codigo]
      ,[Nombre]
      ,[Tipo]
      ,[Activo]
      ,[DniAcceso]
  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad]
  
  select * from asistencia where mes = '12' and año = '2015' and IdServDepartUnid = '45'
  
  select * from asistencia where mes = '11' and año = '2015' and CODIGO = '084175'
  
update ASISTENCIA set OBSERVACION = '', FALTA = '', TARDANZA = '', PERMISO = '', PRODUCTIVA = '' where mes = '12' and año = '2015'