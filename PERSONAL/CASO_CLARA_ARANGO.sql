/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [CODIGO]
      ,[CODACT]
      ,[DIA]
      ,[MES]
      ,[AÑO]
      ,[TIPO]
      ,[HORAI]
      ,[HORAS]
      ,[HORAI_REG]
      ,[HORAS_REG]
      ,[HORA_PRG]
      ,[MIN_ADIC]
      ,[OBSERVACION]
      ,[FALTA]
      ,[TARDANZA]
      ,[PERMISO]
      ,[PRODUCTIVA]
      ,[INDICADOR]
      ,[SITUACION]
      ,[HORAI_REG1]
      ,[HORAS_REG1]
      ,[IdServDepartUnid]
  FROM [BDPERSONAL].[dbo].[ASISTENCIA] 
  
  USE BDPERSONAL
  SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'RAMOS%'
  
  SELECT * FROM ASISTENCIA WHERE CODIGO = '084105' AND MES = 11 AND AÑO = 2016
  UPDATE ASISTENCIA SET CODIGO = '054072' WHERE CODIGO = '084105' AND MES = 11 AND AÑO = 2016
  
  SELECT * FROM ASISTENCIA WHERE CODIGO = '054072' AND MES = 11 AND AÑO = 2016
  
  
  