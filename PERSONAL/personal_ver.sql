/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [NKEY]
      ,[CODIGO]
      ,[NOMBRE]
      ,[TIENE_ASISTENCIA]
      ,[FECHA]
      ,[ESTADO]
      ,[CODHORA]
  FROM [BDPERSONAL].[dbo].[REVISA_ASISTENCIA] where ESTADO = '0' order by NOMBRE asc
  use BDPERSONAL
  select * from asistencia where codigo = '084483' and MES = 1 and AÑO = 2016 order by DIA asc
  
  select * from asistencia where codigo = '084327' and MES = 1 and AÑO = 2016 order by DIA asc
  select * from asistencia where codigo = '084601' and MES = 1 and AÑO = 2016 order by DIA asc
