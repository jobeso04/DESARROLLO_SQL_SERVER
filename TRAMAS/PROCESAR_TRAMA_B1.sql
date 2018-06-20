
declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-01', 101)
TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_TR_ATEN]
truncate table [SIGSALUD].[dbo].[TMP_TR_ATEN_M]
truncate table [SIGSALUD].[dbo].[TMP_TR_ATEN_F]  
SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[ATENCIONC]
 WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO = '0' GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)
