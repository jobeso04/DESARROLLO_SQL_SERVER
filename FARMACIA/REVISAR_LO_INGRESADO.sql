
/* verificar item stock */



declare @lcproforma varchar(50) = '1718005560'
select * from [SIGSALUD].[dbo].[ORDENC] where ORDENID = @lcproforma
select * from [SIGSALUD].[dbo].[ORDEND] where ORDENID = @lcproforma

select * from [SIGSALUD].[dbo].[KARDEX]  WHERE ITEM = '170098' ORDER BY OPERACION DESC
SELECT * FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '170098' AND ALMACEN = 'F'
select * from [SIGSALUD].[dbo].[KARDEX]   ORDER BY OPERACION DESC

239