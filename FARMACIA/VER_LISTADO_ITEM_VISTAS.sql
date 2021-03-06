USE SIGSALUD
/* SELECT ITEM, UPPER(NOMBRE) NOMBRE, UPPER(PRESENTACION) PRESENTACION, STOCK FROM V_STOCK WHERE ALMACEN = 'F' ORDER BY NOMBRE ASC */
SELECT ALMACEN, UPPER(NOMBRE) NOMBRE, UPPER(PRESENTACION) PRESENTACION, STOCK FROM V_STOCK  ORDER BY NOMBRE ASC

declare @lcnombre varchar(200) = 'cloz'
SELECT ITEM, UPPER(NOMBRE) NOMBRE, UPPER(PRESENTACION) PRESENTACION, STOCK FROM V_STOCK WHERE 
 NOMBRE LIKE '%' + @lcnombre + '%' and ALMACEN = 'F' ORDER BY NOMBRE ASC


select FECHA, UPPER(NOMBRE_TRANSACCION) as NTRA, USUARIO, NOMBRE_PACIENTE, NOMBRE_MEDICO, COLEGIO, CANTIDAD, SALDO
  from V_KARDEX where item = '170148' order by FECHA desc     


SELECT * FROM ORDENC WHERE NOMBRE LIKE 'PEREZ JIMENEZ%' order by FECHA desc 


select *  from V_KARDEX 

use SIGSALUD
declare @litem varchar(10) =  '170148'
declare @lcfecha1 datetime = convert(datetime, '2015-12-01',101)
declare @lcfecha2 datetime = convert(datetime, '2015-12-10',101)

select FECHA, UPPER(NOMBRE_TRANSACCION) as NTRA, USUARIO, NOMBRE_PACIENTE, NOMBRE_MEDICO, COLEGIO, CANTIDAD, SALDO
  from V_KARDEX where item = @litem AND FECHA BETWEEN @lcfecha1 and @lcfecha2 order by FECHA desc
