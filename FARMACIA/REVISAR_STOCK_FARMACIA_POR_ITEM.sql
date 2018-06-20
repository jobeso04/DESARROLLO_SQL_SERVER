USE SIGSALUD
DECLARE @litem varchar(20) = '170091'

 SELECT item, UPPER(nombre) NOMBRE, 
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) stock_farmacia, 
       MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) stock_almacen,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  stocktotal
   FROM v_stock  WHERE ITEM = @litem GROUP BY item, nombre, sismed, PRESENTACION  order by NOMBRE asc

select top 5 * from KARDEX where ITEM = @litem  order by FECHA desc
select top 5 * from KARDEX where ITEM = @litem AND ALMACEN = 'A' order by FECHA desc
select top 5 * from KARDEX where ITEM = @litem AND ALMACEN = 'F' order by FECHA desc

