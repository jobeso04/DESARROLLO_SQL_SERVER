INSERT INTO [SIGSALUD].[dbo].[STOCK] ([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
SELECT 'EM' AS  [ALMACEN],[ITEM],0 AS [STOCK],[PROMEDIO],[UBICACION],[MINIMO]  FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '171502' AND ALMACEN = 'F'


SELECT ALMACEN  FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '171502' 



SELECT 'EM' AS  [ALMACEN],[ITEM],0 AS [STOCK],[PROMEDIO],[UBICACION],[MINIMO]  FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '171502' AND ALMACEN = 'F'


INSERT INTO [SIGSALUD].[dbo].[STOCK] ([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
 select almacen, '171502' as item, 0 as stock, 0 as promedio, '0' as ubicacion, 0 as minimo from [SIGSALUD].[dbo].[ALMACEN] where ACTIVO = '1'
  AND ALMACEN NOT IN (SELECT ALMACEN  FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '171502' )