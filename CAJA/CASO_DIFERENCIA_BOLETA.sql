/* PROCEDIMIENTO PARA VER DETALLE DE BOLETA */

declare @lfecha DATETIME = CONVERT(DATETIME,'2015-08-30',102)
declare @lnumero varchar(100) = '002-0939978'
declare @lpagoid varchar(50) = '15145161'
declare @lnombre varchar(150) = 'TRAVEZAÑO TORRES'
declare @lestado varchar(2) = '2'

Select PAGOID, FECHA, FECHA_REGISTRO, TIPO_DOCUMENTO, NUMERO, PACIENTE, NOMBRE, CAJA, TURNO, TOTAL from PAGOC WHERE FECHA = @lfecha and modulo = 'caja' and USUARIO = 'yvalle' and total = 0 order by FECHA_REGISTRO asc

declare @lboletainicial varchar(100) = '001-1524415'
declare @lboletafinal varchar(100) = '001-1524415'



DECLARE @litem varchar(50)= '15162184'

Select PAGOID, FECHA, FECHA_REGISTRO, TIPO_DOCUMENTO, NUMERO, PACIENTE, NOMBRE, CAJA, TURNO, TOTAL, HORA_REGISTRO, ESTADO from PAGOC WHERE PAGOID = @litem
SELECT * FROM PAGOD WHERE PAGOID = @litem ORDER BY ITEM ASC
SELECT SUM(IMPORTE) AS TOTAL FROM PAGOD WHERE PAGOID = @litem



declare @lboletainicial varchar(100) = '001-1524415'
declare @lboletafinal varchar(100) = '001-1524415'

SELECT * FROM PAGOC WHERE NUMERO BETWEEN @lboletainicial AND @lboletafinal ORDER BY NUMERO ASC