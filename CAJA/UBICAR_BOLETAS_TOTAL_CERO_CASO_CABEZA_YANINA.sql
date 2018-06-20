/* PROCEDIMIENTO PARA VER DETALLE DE BOLETA */
USE SIGSALUD 
declare @lfecha DATETIME = CONVERT(DATETIME,'21/11/2015',103)
declare @lmodulo varchar(10) = 'CAJA'
declare @lusuario varchar(20) = 'OGARCES'

Select PAGOID, FECHA, FECHA_REGISTRO, TIPO_DOCUMENTO, NUMERO, PACIENTE, NOMBRE, CAJA, TURNO, TOTAL
 from PAGOC WHERE FECHA = @lfecha and modulo = @lmodulo  and USUARIO = @lusuario and ESTADO = '2' order by FECHA_REGISTRO asc   

 SELECT PAGOID, SUM(IMPORTE) AS TOTAL  FROM PAGOD WHERE PAGOID IN (Select PAGOID from PAGOC WHERE FECHA = @lfecha and modulo = @lmodulo  and USUARIO = @lusuario ) GROUP BY PAGOID ORDER BY PAGOID

/* update PAGOC set TOTAL = 0 where PAGOID = '15199735' */

 SELECT PAGOID, SUM(IMPORTE) AS TOTALD  FROM PAGOD WHERE PAGOID = '15199736' group by PAGOID 


/* update pagod set costo = 0, precio = 0, importe = 0 where pagoid = (numero de pagoid de la boleta con diferencia */


/* 16029803 */

/* DELETE FROM PAGOD WHERE PAGOID = '16029803' */
/* DELETE FROM PAGOC WHERE PAGOID = '16029803' */

select usuario from USUARIO where MODULO = 'caja' and  activo = '1' and cargo = 'CAJERO' order by USUARIO asc

select * from USUARIO where MODULO = 'caja' and  activo = '1'  order by USUARIO asc

