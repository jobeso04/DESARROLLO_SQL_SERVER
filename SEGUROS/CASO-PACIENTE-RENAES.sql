/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ENTIDADSIS]
      ,[NOMBRE]
      ,[codigoSIS]
      ,[NOMBREANTES]
      ,[IdUbigeo]
      ,[Categoria]
      ,[Ejecutora]
      ,[Disa]
      ,[estado]
      ,[clas]
  FROM [SIGSALUD].[dbo].[ENTIDAD_RENAES]  WHERE NOMBRE LIKE '%SANTA ISABEL%'
  
  SELECT * FROM ENTIDADSIS WHERE NOMBRE LIKE '%SANTA ISABEL%'
  
  SELECT * FROM UBIGEO WHERE UBIGEO = '190107 '