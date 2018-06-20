/* oBTENER FECHA DE VENCIEDOS, SEGUN EL A�O EN CURSO */

DECLARE @lanio int = YEAR(GETDATE()) 
TRUNCATE TABLE  [SIGSALUD].[dbo].[TMP_VENCI]
INSERT INTO [SIGSALUD].[dbo].[TMP_VENCI]([ITEM],[NOMBRE],[PRESENTACION],[stock1],[FECHA_VENCIMIENTO])
SELECT V_STOCK.ITEM, UPPER(nombre) NOMBRE, UPPER(presentacion) PRESENTACION,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) stock1, INGRESOD.FECHA_VENCIMIENTO FROM v_stock 
       LEFT JOIN INGRESOD ON INGRESOD.ITEM = V_STOCK.ITEM where year(INGRESOD.FECHA_VENCIMIENTO) = @lanio  AND V_STOCK.STOCK <> 0 
                   GROUP BY V_STOCK.ITEM, nombre, PRESENTACION, INGRESOD.FECHA_VENCIMIENTO  order by V_STOCK.ITEM ASC
select ITEM, NOMBRE, PRESENTACION, stock1, MAX(FECHA_VENCIMIENTO) AS VENCI from TMP_VENCI GROUP BY ITEM, NOMBRE, PRESENTACION, stock1
ORDER BY NOMBRE ASC
