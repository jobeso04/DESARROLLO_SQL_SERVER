/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [TURNO_CONSULTA]
  FROM [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] 
  group by TURNO_CONSULTA
  

SELECT *
  FROM [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] 
  where TURNO_CONSULTA = 'N'
  group by TURNO_CONSULTA


SELECT AT(
select turno FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
group by TURNO 

