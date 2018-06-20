/* PROCEDIMIENTO PARA VER DETALLE DE BOLETA */

declare @lfecha DATETIME = CONVERT(DATETIME,'2016-02-24',102)
declare @lmodulo varchar(10) = 'CAJA'
declare @lusuario varchar(20) = 'OGARCES'
 Select PAGOID, FECHA, FECHA_REGISTRO, TIPO_DOCUMENTO, NUMERO, PACIENTE, NOMBRE, CAJA, TURNO, TOTAL
 from PAGOC WHERE FECHA = @lfecha and modulo = @lmodulo  and USUARIO = @lusuario  order by FECHA_REGISTRO asc 

SELECT PAGOID, SUM(IMPORTE) AS TOTAL  FROM PAGOD WHERE PAGOID IN (Select PAGOID from PAGOC WHERE FECHA = @lfecha and modulo = @lmodulo  and USUARIO = @lusuario ) GROUP BY PAGOID ORDER BY PAGOID


/* update pagod set costo = 0, precio = 0, importe = 0 where pagoid = (numero de pagoid de la boleta con diferencia */


16029803

/* DELETE FROM PAGOD WHERE PAGOID = '16029803' */
/* DELETE FROM PAGOC WHERE PAGOID = '16029803' */

