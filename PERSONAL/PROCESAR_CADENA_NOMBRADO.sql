/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [DNI]
      ,[NOMBRE]
      ,[CADENA]
      ,[NIVEL]
  FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] ORDER BY NOMBRE ASC
  
  
USE BDPERSONAL 
     SELECT DNI, NOMBRE, CADENA, NIVEL FROM CADENA_NOMBRADO ORDER BY NOMBRE ASC
     
     SELECT *  FROM [BDPERSONAL].[dbo].[MAESTRO] where NOMBRE like 'ari%'
     
     SELECT dni, cadena,  *  FROM [BDPERSONAL].[dbo].[MAESTRO] where DNI = '07668242'
     
     update [BDPERSONAL].[dbo].[GUARDIA_EFE] set cadenafun = (select CADENA from CADENA_NOMBRADO where DNI = '40101647') where PLAZA = '40101647'
     
     
     SELECT   *  FROM [BDPERSONAL].[dbo].[GUARDIA_EFE] where PLAZA = '07668242'