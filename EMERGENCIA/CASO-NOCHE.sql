/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ID_PROCE_WEB]
      ,[PROFESIONAL]
      ,[FECHA]
      ,[HORA]
      ,[FECHA_HORA_REG]
      ,[PACIENTE]
      ,[NOMBRES]
      ,[CODIGO_PROC]
      ,[TRATAMIENTO]
      ,[SEGURO]
      ,[ZONA_APLICACION]
      ,[NRO_TICKET]
      ,[ESTADO]
      ,[EDAD]
      ,[FECHA_NACI]
      ,[APELLIDOS]
      ,[NOMBRE]
      ,[SEXO]
      ,[TIPO_DE_EDAD]
      ,[NEDAD]
      ,[DNI]
  FROM [SIGSALUD].[dbo].[EMERGENCIA_PROC_WEB]  WHERE  ID_PROCE_WEB = '15020429'
  
  SELECT MAX(ID_PROCE_WEB) AS PROCE FROM EMERGENCIA_PROC_WEB
  
  ZVC
  
  15020429