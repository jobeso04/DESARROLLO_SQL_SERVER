/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ID_MENU]
      ,[NOMBRE]
      ,[ICONO]
      ,[URL]
      ,[ORDEN]
      ,[ESTADO]
      ,[ID_AM]
      ,[DNI]
  FROM [SIGSALUD].[dbo].[ACCESO_MENU] WHERE DNI = '40391148'
  
  SELECT * FROM ACCESO_SUBMENU  WHERE DNI = '40391148'