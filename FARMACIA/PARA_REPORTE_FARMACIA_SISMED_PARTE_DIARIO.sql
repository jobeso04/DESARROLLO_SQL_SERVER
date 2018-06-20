use SIGSALUD
declare @opeinicio varchar(8) = '16175588'
declare @opefin varchar(8) = '16231135'
declare @lalmacen varchar(1) = 'F'


SELECT '05947' AS CODIGO_PRE, SISMED AS CODIGO_MED, NOMBRE, MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  STOCK, GETDATE() AS FECHA_ID 
   FROM v_stock   where stock <> 0 AND SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION' GROUP BY ITEM, SISMED, NOMBRE ORDER BY NOMBRE ASC


SELECT '05947' AS CODIGO_PRE, SISMED AS CODIGO_MED, MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  STOCK, GETDATE() AS FECHA_ID 
   FROM v_stock   where stock <> 0 AND SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION' GROUP BY ITEM, SISMED, NOMBRE ORDER BY NOMBRE ASC



select * from V_STOCK  
 
 
DONACION=Bencilpenicilina Procainica 1000,000UI c/d. 


 SELECT '05947' AS CODIGO_PRE, b.interfase2 AS CODIGO_MED, UPPER(A.nombre) NOMBRE, UPPER(A.presentacion) PRESENTACION,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) FARMACIA, 
       MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) ALMACEN,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) +  MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) as  STOCK, GETDATE() AS FECHA_ID 
   FROM v_stock A left join ITEM b on b.ITEM = a.ITEM WHERE B.ITEM IN (select item from Kardex  where Operacion between @opeinicio and @opefin and almacen=@lalmacen  group by item )
     GROUP BY A.item, A.nombre, A.PRESENTACION, B.INTERFASE2   order by A.NOMBRE asc
     