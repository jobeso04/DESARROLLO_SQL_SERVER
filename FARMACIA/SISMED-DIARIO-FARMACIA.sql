use SIGSALUD
select ITEM, INTERFASE2, NOMBRE, GRUPO_RECAUDACION, PRESENTACION from ITEM where ITEM like '17%'
  
   SELECT '0005947' AS CODIGO_PRE, b.interfase2 AS CODIGO_MED, UPPER(A.nombre) NOMBRE, UPPER(A.presentacion) PRESENTACION,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) FARMACIA, 
       MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) ALMACEN,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) +  MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) as  STOCK, GETDATE() AS FECHA_ID 
   FROM v_stock A left join ITEM b on b.ITEM = a.ITEM 
     GROUP BY A.item, A.nombre, A.PRESENTACION, B.INTERFASE2   order by A.NOMBRE asc
   
   
   
 
 SELECT '0005947' AS CODIGO_PRE, b.interfase2 AS CODIGO_MED, UPPER(A.nombre) NOMBRE, UPPER(A.presentacion) PRESENTACION,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) FARMACIA, 
       MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) ALMACEN,
       MAX( CASE A.almacen WHEN 'F' THEN A.stock ELSE 0 END ) +  MAX( CASE A.almacen WHEN 'A' THEN A.stock ELSE 0 END ) as  STOCK, GETDATE() AS FECHA_ID 
   FROM v_stock A left join ITEM b on b.ITEM = a.ITEM 
     GROUP BY A.item, A.nombre, A.PRESENTACION, B.INTERFASE2   order by A.NOMBRE asc
   
  
