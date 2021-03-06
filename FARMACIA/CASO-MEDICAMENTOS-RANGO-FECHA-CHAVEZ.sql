/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *   FROM [SIGSALUD].[dbo].[ORDENC] order by ORDENID desc

SELECT *   FROM [SIGSALUD].[dbo].[ORDENC] where ordenid = '1717112104'
select * from [SIGSALUD].[dbo].[ORDEND]  where ordenid = '1717112104'
select * from [SIGSALUD].[dbo].[KARDEX] WHERE ITEM = '171070' ORDER BY FECHA DESC


SELECT *   FROM [SIGSALUD].[dbo].[V_ORDENC] where ordenid = '1717112103'
select * from [SIGSALUD].[dbo].[ORDEND]  where ordenid = '1717112103'
/*select * from [SIGSALUD].[dbo].[PAGOC] WHERE MODULO = 'FARMACIA' ORDER BY PAGOID DESC  where ordenid = '1717112103'
select * from [SIGSALUD].[dbo].[PAGOC] ORDER BY PAGOID DESC  where ordenid = '1717112103'*/
select * from [SIGSALUD].[dbo].[KARDEX] WHERE ITEM = '170388' ORDER BY FECHA DESC

/* CUANTO MEDICAMENTO DEL 2016 DE FARMACIA A HOSPITALIZACION */


SELECT *   FROM [SIGSALUD].[dbo].[ORDENC] WHERE  FECHA BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-012-31', 101)
AND ESTADO = '3' AND ORIGEN = 'HO' order by ORDENID desc


SELECT *   FROM [SIGSALUD].[dbo].[V_ORDEND] WHERE  ORDENID IN (SELECT ORDENID   FROM [SIGSALUD].[dbo].[ORDENC] WHERE  FECHA BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-012-31', 101)
AND ESTADO = '3' AND ORIGEN = 'HO') ORDER BY ORDENID DESC



/* CANTIDAD DE ORDENES */

SELECT ORDENID, COUNT(ORDENID) AS CANTIDAD   FROM [SIGSALUD].[dbo].[V_ORDEND] WHERE  ORDENID IN (SELECT ORDENID   FROM [SIGSALUD].[dbo].[ORDENC] WHERE  FECHA BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-012-31', 101)
AND ESTADO = '3' AND ORIGEN = 'HO') GROUP BY ORDENID  ORDER BY COUNT(ORDENID) DESC






USE SIGSALUD
SELECT * FROM dbo.TIPO_TRANSACCION ORDER BY TIPO_TRANSACCION 



