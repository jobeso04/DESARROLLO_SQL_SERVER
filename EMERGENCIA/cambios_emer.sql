/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [DNI]
      ,[NOMBRES]
      ,[UNIDAD_ORGANICA]
      ,[EMAIL]
      ,[CARGO]
      ,[FECHA_EXPIRACION]
      ,[USU_NOMBRE]
      ,[USU_PATERNO]
      ,[USU_MATERNO]
      ,[FECH_ULT_INGRESO]
      ,[ESTADO]
      ,[CLAVE]
      ,[SEXO]
      ,[SESION]
      ,[FOTO]
      ,[FIRMA_LEGAJOS]
  FROM [SIGSALUD].[dbo].[USUARIO_WEB]
  
USE SIGSALUD  
 select nombres, DNI, CLAVE, CARGO, CONVERT(CHAR, FECHA_EXPIRACION,103) AS FECHA,  estado  from USUARIO_WEB where NOMBRES like '%' + 'OBESO' + '%'
SELECT * FROM  dbo.USUARIO
SELECT CONVERT(DATETIME, '21/05/2017', 103) 



UPDATE [SIGSALUD].[dbo].[USUARIO_WEB] SET [FECHA_EXPIRACION] = <FECHA_EXPIRACION, datetime,> , [ESTADO] = <ESTADO, int,> [CLAVE] = <CLAVE, varchar(30),>
 WHERE dni 
GO





