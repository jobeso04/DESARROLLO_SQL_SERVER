 
  
SELECT item, UPPER(nombre) NOMBRE, UPPER(presentacion) PRESENTACION,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) stock1, 
       MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) stock2,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  stocktotal
 FROM v_stock  WHERE item = '170148' GROUP BY item, nombre, PRESENTACION  order by NOMBRE asc



SELECT *  FROM v_stock  WHERE NOMBRE LIKE 'CLON%'   order by NOMBRE asc

  declare @litem varchar(10) = '170148'
  
  SELECT ITEM, UPPER(NOMBRE) as nombre, UPPER(presentacion) as presentacion   FROM V_INGRESOD WHERE ITEM = @litem ORDER BY FECHA_VENCIMIENTO  DESC


SELECT *  FROM v_stock  WHERE NOMBRE LIKE 'CLON%'   order by NOMBRE asc

declare @litem varchar(10) = '170148'
SELECT *   FROM V_INGRESOD WHERE ITEM = @litem ORDER BY FECHA_VENCIMIENTO  DESC

SELECT ITEM, UPPER(nombre) AS NOMBRE, UPPER(presentacion) AS PRESENTACION, LOTE, RTRIM(ITEM)+ RTRIM(LOTE) as IDMEDICAMENTO, REGISTRO, FECHA_VENCIMIENTO  FROM V_INGRESOD 
          ORDER BY FECHA_VENCIMIENTO  DESC


SELECT ITEM, UPPER(nombre) AS NOMBRE, UPPER(presentacion) AS PRESENTACION, LOTE, RTRIM(ITEM)+ RTRIM(LOTE) as IDMEDICAMENTO, REGISTRO, FECHA_VENCIMIENTO  FROM V_INGRESOD 
          ORDER BY NOMBRE  ASC
