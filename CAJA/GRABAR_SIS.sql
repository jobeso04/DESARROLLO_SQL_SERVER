/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ITEM]
      ,[SERVICIO]
      ,[CPT]
      ,[NOMBRE]
      ,[PRECIO]
      ,[SIS]
      ,[SOAT]
      ,[ABREVIATURA]
      ,[GRUPO_RECAUDACION]
      ,[CLASIFICADOR]
      ,[GRUPO_LIQUIDACION]
      ,[GRUPO_TARIFARIO]
      ,[PRESENTACION]
      ,[FAMILIA]
      ,[CLASE]
      ,[GENERICO]
      ,[LABORATORIO]
      ,[FRACCION]
      ,[MODULO]
      ,[ACTIVO]
      ,[ID]
  FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017] WHERE ACTIVO = '1'
  
  /* 3591 */
  
  USE SIGSALUD
  SELECT * INTO ITEM_SIS FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017] WHERE ACTIVO = '7'
  
  
  SELECT * FROM ITEM_SIS