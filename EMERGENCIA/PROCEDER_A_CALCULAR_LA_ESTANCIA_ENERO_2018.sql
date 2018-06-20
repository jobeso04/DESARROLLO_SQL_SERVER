/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT EMERGENCIA_ID, fecha, estado, nombres, FECHA_ING, fecha_salida, HORA_ING, HORA_SAL, HORA_EST, estancia, PRIORIDAD, CONSULTORIO, CONDICION_EGRESO, ESTADO_PACIENTE
  FROM [SIGSALUD].[dbo].[EMERGENCIA] where MONTH(fecha) = 9 and year(fecha) = 2017 and estancia = '2' and hora_est <> '' order by estancia desc
  
  --445
  -- 238
  -- 506
  
  
  SELECT * FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE EMERGENCIA_ID = '17038593'
  UNION ALL
  SELECT * FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE EMERGENCIA_ID = '17048996'
  
  
  [SIGSALUD].[dbo].[EMERGENCIA] 