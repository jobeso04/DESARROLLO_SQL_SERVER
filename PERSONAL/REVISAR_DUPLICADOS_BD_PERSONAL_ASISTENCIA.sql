/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [CODIGO]
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
  
  
SELECT * FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = '084429' AND MES = 5 AND AÑO = 2017

SELECT * FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = '084119' AND MES = 5 AND AÑO = 2017

SELECT * FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO =  '084045' AND MES = 5 AND AÑO = 2017 ORDER BY DIA ASC

USE BDPERSONAL
DELETE FROM asistencia WHERE CODIGO = '084045' AND MES = 5 AND AÑO = 2017


SELECT * FROM MAESTRO WHERE CODIGO = '084119'


select * from dbo.T_Horarios where codhor = 'M4'


SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%DURAN%'

SELECT 





SELECT CODIGO, COUNT(CODIGO) AS DIAS FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE  MES = 5 AND AÑO = 2017 GROUP BY CODIGO ORDER BY  COUNT(CODIGO)


USE BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%JARA%'


select * from ASISTENCIA where SITUACION is null

update ASISTENCIA set situacion = '' where SITUACION is null