USE SIGSALUD
  SELECT '05947' AS CODIGO_PRE, RIGHT('00000' + convert(varchar(5), SISMED),5) AS CODIGO_MED, MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) ALMACEN, 
  MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) FARMACIA, MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  STOCK, 
  RIGHT('00' + CONVERT(VARCHAR(2), DAY(GETDATE())),2) + '/' + RIGHT('00' + CONVERT(VARCHAR(2), MONTH(GETDATE())),2) + '/' +  CONVERT(VARCHAR(4), YEAR(GETDATE())) AS FECHA_ID, UPPER(NOMBRE) AS NOMBRE 
    FROM v_stock   where SUBSTRING(NOMBRE,1,3) <> 'COE' AND SUBSTRING(NOMBRE,1,8) <> 'DONACION' GROUP BY ITEM, SISMED, NOMBRE ORDER BY NOMBRE ASC