declare @litem varchar(10) = '170946'
declare @lcfecha1 datetime = convert(datetime, '2015-12-01',101)
declare @lcfecha2 datetime = convert(datetime, '2015-12-14',101)

SELECT  @lcfecha1,  @lcfecha2

select FECHA, UPPER(NOMBRE_TRANSACCION) as NTRA, USUARIO, NOMBRE_PACIENTE, NOMBRE_MEDICO, COLEGIO, CANTIDAD, SALDO
  from V_KARDEX where item = @litem AND FECHA = @lcfecha2 order by FECHA desc
  
  
  
  
  
  
  
  SELECT item, UPPER(nombre) NOMBRE, UPPER(presentacion) PRESENTACION,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) stock1, 
       MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) stock2,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  stocktotal
   FROM v_stock  WHERE NOMBRE LIKE 'TRAMADOL' + '%' GROUP BY item, nombre, PRESENTACION  order by NOMBRE asc