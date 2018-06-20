/* actuializado en transferncia - total y sub total - eliminandi un detalle */
/* eliminado la operacion en kardex de almacen y farmacia  */

/* cuadrar stock en almacen y farmacia */



use sigsalud
declare @lidtransferencia varchar(13) = '16000576' 
select * from TRANSFERENCIAC where TRANSFERENCIAID = @lidtransferencia
select * from TRANSFERENCIAD where TRANSFERENCIAID = @lidtransferencia

/* escoger el item a eliminar */
declare @litem as varchar(13) = '170472'
select * from TRANSFERENCIAD where TRANSFERENCIAID = @lidtransferencia and item = @litem
delete from TRANSFERENCIAD where TRANSFERENCIAID = @lidtransferencia and item = @litem
update TRANSFERENCIAC set SUBTOTAL = 10294.46 - 322, TOTAL = 10294.46-322 where TRANSFERENCIAID = @lidtransferencia


select * from KARDEX where OPERACION = '16559841'

delete from KARDEX where OPERACION = '16559841'


/* para farmacia */

select * from KARDEX where ITEM = '170472' and ALMACEN = 'F' order by FECHA desc


delete from KARDEX where OPERACION = '16559919'