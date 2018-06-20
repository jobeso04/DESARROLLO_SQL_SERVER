 declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_C2]
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_F_C2]
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_M_C2]
   SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5') GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)
   
   
   