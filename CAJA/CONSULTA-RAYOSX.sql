/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [RAYOSX]
      ,[NUMERO]
      ,[PAGOID]
      ,[FECHA]
      ,[PROGRAMADO]
      ,[FECHA_PROGRAMADO]
      ,[SEGURO]
      ,[PACIENTE]
      ,[NOMBRES]
      ,[TELEFONO]
      ,[TIPO_EDAD]
      ,[EDAD]
      ,[SEXO]
      ,[MEDICO]
      ,[PROFESIONAL]
      ,[UPS]
      ,[HIS_CODSERVICIO]
      ,[HIS_NOMSERVICIO]
      ,[B18_24]
      ,[B24_30]
      ,[B30_40]
      ,[B14_14]
      ,[B14_17]
      ,[M18_24]
      ,[M24_30]
      ,[M30_40]
      ,[M14_14]
      ,[M14_17]
      ,[OBSERVACION]
      ,[EXONERADO]
      ,[INFORME]
      ,[ENTREGADO]
      ,[FAMILIAR]
      ,[RESPONSABLE]
      ,[USUARIO]
      ,[B8_10]
      ,[B10_12]
      ,[M8_10]
      ,[M10_12]
  FROM [SIGSALUD].[dbo].[RAYOSX] order by RAYOSX desc
  


DECLARE @lcnombre varchar(200) = 'QUEVEDOCRUZ'  
select RAYOSX, PAGOID, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, A.SEGURO, B.NOMBRE, NOMBRES, PROFESIONAL, HIS_NOMSERVICIO, B18_24, B24_30, B30_40, B14_14, B14_17, M18_24, M24_30, M30_40, M14_14, M14_17, B8_10, B10_12, M8_10, M10_12
 from   [SIGSALUD].[dbo].[RAYOSX] A LEFT JOIN [SIGSALUD].[dbo].[SEGURO] B ON A.SEGURO = B.SEGURO
WHERE NOMBRES LIKE '%' + @lcnombre + '%' order by RAYOSX desc

DECLARE @lc_rayosx varchar(13) = '48131'
select RAYOSX, A.ITEM, UPPER(B.NOMBRE), ZONA, CANTIDAD from [SIGSALUD].[dbo].[RAYOSX_DETALLE] A LEFT JOIN [SIGSALUD].[dbo].[ITEM] B ON A.ITEM = B.ITEM 
  WHERE RAYOSX = @lc_rayosx

select FECHA, NUMERO, TOTAL, ESTADO from [SIGSALUD].[dbo].[PAGOC] WHERE PAGOID = '18005243'


select * from [SIGSALUD].[dbo].[PAGOC] WHERE PAGOID = '18008341'

SELECT * FROM [SIGSALUD].[dbo].[CITA] WHERE CITA_ID = '18008341'


select * from [SIGSALUD].[dbo].[EMERGENCIA] where EMERGENCIA_ID = '18005925'

update [SIGSALUD].[dbo].[EMERGENCIA] set seguro = '0' where EMERGENCIA_ID = '18005925'