USE SIGSALUD

SELECT * FROM ITEM WHERE NOMBRE LIKE '%PARACE%'

SELECT * FROM ITEM WHERE ITEM = '170047'

SELECT ALMACEN, ITEM, FECHA, CANTIDAD  FROM KARDEX WHERE FECHA BETWEEN CONVERT(DATETIME, '2016-08-01', 101) AND CONVERT(DATETIME, '2016-08-31', 101) AND ALMACEN = 'A'
 ORDER BY ITEM  ASC
 
SELECT ALMACEN, ITEM, FECHA, CANTIDAD  FROM KARDEX WHERE FECHA BETWEEN CONVERT(DATETIME, '2016-08-01', 101) AND CONVERT(DATETIME, '2016-08-31', 101) AND ALMACEN = 'A'
 ORDER BY ITEM  ASC
 

SELECT *  FROM KARDEX WHERE ITEM = '171151'  AND ALMACEN = 'A' AND  FECHA BETWEEN CONVERT(DATETIME, '2016-08-01', 101) AND CONVERT(DATETIME, '2016-08-31', 101)
  ORDER BY FECHA ASC


SELECT *  FROM KARDEX WHERE ITEM = '171151'  AND ALMACEN = 'A' AND
  FECHA BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-01-31', 101) AND TIPO_TRANSACCION IN ('STI', 'STR') 
  ORDER BY FECHA ASC


SELECT T1 = SUM(CANTIDAD)/(6*30)  FROM KARDEX WHERE ITEM = '171151'  AND ALMACEN = 'A' AND
  FECHA BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-01-31', 101) AND TIPO_TRANSACCION IN ('STI', 'STR')  GROUP BY ITEM 


SELECT * FROM TIPO_TRANSACCION ORDER BY TIPO_TRANSACCION ASC

 SELECT * FROM ITEM WHERE NOMBRE LIKE '%LOSAR%'



 170047
 
 
 SELECT * FROM ITEM WHERE GRUPO_RECAUDACION = '17' ORDER BY ITEM ASC

 