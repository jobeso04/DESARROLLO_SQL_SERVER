USE SIGSALUD
  SELECT  RIGHT('00000' + convert(varchar(5), SISMED),5) AS SISMED, UPPER(NOMBRE) AS NOMBRE, UPPER(PRESENTACION) AS PRESENTACION, MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) ALMACEN, 
  MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) FARMACIA, MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  STOCK
      FROM v_stock   where SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION' 
       AND CLASE IN ('A', 'B', 'C', 'D', 'E') GROUP BY ITEM, SISMED, NOMBRE, PRESENTACION ORDER BY NOMBRE ASC
      
  
  SELECT  RIGHT('00000' + convert(varchar(5), SISMED),5) AS SISMED, UPPER(NOMBRE) AS NOMBRE, UPPER(PRESENTACION) AS PRESENTACION, MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) ALMACEN, 
  MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) FARMACIA, MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  STOCK
      FROM v_stock   where SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION' 
       AND CLASE NOT IN ('A', 'B', 'C', 'D', 'E') GROUP BY ITEM, SISMED, NOMBRE, PRESENTACION ORDER BY NOMBRE ASC
  