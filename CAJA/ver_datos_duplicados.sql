


/* PROCEDIMIENTO PARA VER BOLETA */

declare @lfecha DATETIME = CONVERT(DATETIME,'2015-08-25',102)
declare @lnumero varchar(100) = '002-0939978'
declare @lpagoid varchar(50) = '15145161'
declare @lnombre varchar(150) = 'TRAVEZAÑO TORRES'
declare @lestado varchar(2) = '2'

Select * from PAGOC WHERE FECHA = @lfecha order by fecha desc

/* Select * from PAGOC WHERE NUMERO = @lnumero  */
/* Select * from PAGOC WHERE pagoid = @lpagoid */
/* Select * from PAGOC WHERE NOMBRE = @lnombre  */

/* Select PAGOID, FECHA, fecha_registro, tipo_documento, NUMERO, NOMBRE, CAJA, TURNO, CONSULTORIO, USUARIO, TOTAL, MODULO, ESTADO, origen from PAGOC WHERE NUMERO = @lnumero
/* UPDATE PAGOC SET ESTADO = @lestado WHERE pagoid = @lpagoid   */
Select PAGOID, FECHA, fecha_registro, tipo_documento, NUMERO, NOMBRE, CAJA,TURNO, CONSULTORIO, USUARIO, TOTAL, MODULO, ESTADO, origen from PAGOC WHERE NUMERO = @lnumero
select * from pagod where PAGOID = @lpagoid */

/* select nombre from USUARIO where USUARIO = (select USUARIO from PAGOC WHERE NUMERO = @lnumero)  */