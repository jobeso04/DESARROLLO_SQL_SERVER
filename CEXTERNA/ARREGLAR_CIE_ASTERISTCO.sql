/****** Script para el comando SelectTopNRows de SSMS  ******/

USE SIGSALUD
SELECT [CODORD]
      ,[CODIGO]
      ,[NOMBRE]
      ,[SEXO]
      ,[MIN_EDAD]
      ,[MIN_TIPO]
      ,[MAX_EDAD]
      ,[MAX_TIPO]
      ,[EST]
      ,[CLASE]
      ,[CODCAT]
      ,[FORMULA]
      ,[EST1]
  FROM [SIGSALUD].[dbo].[CIEXHIS] WHERE CODIGO LIKE '%*'
  
  SELECT * FROM [SIGSALUD].[dbo].[CIEXHIS] WHERE CODIGO LIKE '%*' ORDER BY CODIGO ASC
  
  SELECT * FROM [SIGSALUD].[dbo].[CIEXHIS] WHERE CODIGO LIKE 'G03%' ORDER BY CODIGO ASC
  
   SELECT * FROM [SIGSALUD].[dbo].[CIEXHIS] WHERE CODIGO LIKE '%*'
  
  /* UPDATE [SIGSALUD].[dbo].[CIEXHIS] SET EST = 'I' WHERE CODIGO LIKE '%*' */
  
  
  SELECT CODIGO,NOMBRE,CODIGO+' - ' + NOMBRE as UNIDAD from CIEXHIS where EST<>'I' AND  CODIGO LIKE 'G03%' ORDER BY CODIGO