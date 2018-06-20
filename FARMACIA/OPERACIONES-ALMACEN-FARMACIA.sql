 SELECT ITEM, RIGHT('00000' + convert(varchar(5), SISMED),5) AS SISMED, UPPER(NOMBRE) AS NOMBRE, 
  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  ALMACEN, 
  MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) AS FARMACIA,
  MAX( CASE almacen WHEN 'C' THEN stock ELSE 0 END ) as  CONSULTORIO, 
  MAX( CASE almacen WHEN 'H' THEN stock ELSE 0 END ) as  HOSPITALIZACION, 
  MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) + MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'C' THEN stock ELSE 0 END )+  MAX( CASE almacen WHEN 'H' THEN stock ELSE 0 END )   as  STOCK_TOTAL
  FROM [SIGSALUD].[dbo].[V_STOCK]   where SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION'   GROUP BY ITEM, SISMED, NOMBRE ORDER BY NOMBRE ASC
  

item, sismed, nombre, farmacia, almacen, consultorio, hospitalizacion, stock_total

SELECT * FROM [SIGSALUD].[dbo].[STOCK]  

SELECT ITEM FROM [SIGSALUD].[dbo].[STOCK] GROUP BY ITEM  ORDER BY ITEM DESC

SELECT * FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '179999' AND ALMACEN = 'F'
SELECT * FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '179999' AND ALMACEN = 'A'
SELECT * FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '179999' AND ALMACEN = 'C'
SELECT * FROM [SIGSALUD].[dbo].[STOCK] WHERE ITEM = '179999' AND ALMACEN = 'H'