/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *  FROM [SIGSALUD].[dbo].[SALIDAC] WHERE SALIDAID = '18000007' 
SELECT *  FROM [SIGSALUD].[dbo].[SALIDAD] WHERE SALIDAID = '18000007' 

DELETE FROM [SIGSALUD].[dbo].[SALIDAD] WHERE SALIDAID = '18000007' 
DELETE FROM [SIGSALUD].[dbo].[SALIDAC] WHERE SALIDAID = '18000007' 

171535    
