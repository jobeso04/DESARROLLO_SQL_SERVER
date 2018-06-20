/* PROCEDMIENTO PARA ELIMINAR LOS INGRESOS POR EQWUIVOCCION D EL DRA. ANGELICA */

use sigsalud	
declare @lidtransaccion varchar(13) = '16002412'

select * from   dbo.INGRESODEVD where INGRESOID = @lidtransaccion
select * from   dbo.INGRESODEVC where INGRESOID = @lidtransaccion
select * from KARDEX where IDTRANSACCION = @lidtransaccion

delete from   dbo.INGRESODEVD where INGRESOID = @lidtransaccion
delete  from   dbo.INGRESODEVC where INGRESOID = @lidtransaccion
delete  from KARDEX where IDTRANSACCION = @lidtransaccion

select * from   dbo.INGRESODEVD where INGRESOID = @lidtransaccion
select * from   dbo.INGRESODEVC where INGRESOID = @lidtransaccion
select * from KARDEX where IDTRANSACCION = @lidtransaccion
