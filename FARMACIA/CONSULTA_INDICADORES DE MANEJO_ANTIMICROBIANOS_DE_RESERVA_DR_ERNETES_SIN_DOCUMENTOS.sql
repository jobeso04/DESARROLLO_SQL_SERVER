USE SIGSALUD

/* ITEM POR HOSPITALIZACION */
/* INGRESAR FECHA INICIO, FINAL */
/* ITEM */
/* CONSULTORIO HOSPITALIZACION */

DECLARE @litem varchar(13) = '170232'
declare @lfechainicio datetime = convert(datetime, '2016-10-01', 101)
declare @lfechafin datetime = convert(datetime, '2016-10-31', 101)

SELECT ORDENID, ITEM, NOMBRE, PRESENTACION, CANTIDAD, PRECIO, DESCUENTO, IMPORTE, NOMBRE_PACIENTE, NOMBRE_MEDICO FROM V_ORDEND 
WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN @lfechainicio  AND @lfechafin
   AND CONSULTORIO IN (SELECT CONSULTORIO FROM CONSULTORIO WHERE TIPO = 'H')  AND ESTADO = '3') AND ITEM = @litem ORDER BY NOMBRE_PACIENTE  ASC
SELECT NOMBRE_CONSULTORIO FROM V_ORDENC WHERE ORDENID = '1715036042'
SELECT SUM(CANTIDAD) AS TOTAL FROM V_ORDEND WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN  @lfechainicio  AND @lfechafin 
   AND CONSULTORIO IN (SELECT CONSULTORIO FROM CONSULTORIO WHERE TIPO = 'H')  AND ESTADO = '3') AND ITEM = @litem GROUP BY ITEM 



/* ITEM POR CONSULTORIO */
/* INGRESAR FECHA INICIO, FINAL */
/* ITEM */
/* AMBULATORIO */
SELECT ORDENID, ITEM, NOMBRE, PRESENTACION, CANTIDAD, PRECIO, DESCUENTO, IMPORTE, NOMBRE_PACIENTE, NOMBRE_MEDICO FROM V_ORDEND 
WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN @lfechainicio  AND @lfechafin
   AND CONSULTORIO IN (SELECT CONSULTORIO FROM CONSULTORIO WHERE TIPO <> 'H')  AND ESTADO = '3') AND ITEM = @litem ORDER BY NOMBRE_PACIENTE  ASC
SELECT NOMBRE_CONSULTORIO FROM V_ORDENC WHERE ORDENID = '1715036042'
SELECT SUM(CANTIDAD) AS TOTAL FROM V_ORDEND WHERE ORDENID IN (SELECT ORDENID FROM V_ORDENC WHERE FECHA BETWEEN @lfechainicio  AND @lfechafin
   AND CONSULTORIO IN (SELECT CONSULTORIO FROM CONSULTORIO WHERE TIPO <> 'H')  AND ESTADO = '3') AND ITEM =  @litem GROUP BY ITEM 


