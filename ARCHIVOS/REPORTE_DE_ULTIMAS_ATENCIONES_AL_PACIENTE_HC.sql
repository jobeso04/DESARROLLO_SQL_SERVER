/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT top 30  HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_CONSULTA
  FROM [SIGSALUD].[dbo].[PACIENTE] where SYSUPDATE < CONVERT(datetime, '2010-12-31', 101) and sysupdate <> '' order by HISTORIA asc
  
  
SELECT *
  FROM [SIGSALUD].[dbo].[PACIENTE] where SYSUPDATE < CONVERT(datetime, '2010-12-31', 101) and sysupdate <> '' order by SYSUPDATE asc  