use SIGSALUD

select * from dbo.INGRESOC where INGRESOID = '16000660'
select * from dbo.INGRESOD where INGRESOID = '16000660'

USE SIGSALUD
update dbo.INGRESOC set SUBTOTAL = 600, TOTAL = 600 where INGRESOID = '16000660'
update dbo.INGRESOD set CANTIDAD = 4, IMPORTE = 600 where INGRESOID = '16000660'
update KARDEX set CANTIDAD = 4, SALDO = 4 where OPERACION = '16464468'
update KARDEX set stock = 4, CANTIDAD = 4, SALDO = 0 where OPERACION = '16464716'
update KARDEX set stock = 0, CANTIDAD = 4, SALDO = 4 where OPERACION = '16464717'
update stock set stock = 4 where item = '171282' and ALMACEN = 'F'


select * from KARDEX where ITEM = '171282' and almacen = 'f' order by FECHA desc

select * from stock where ITEM = '171282' 


select * from KARDEX where ITEM = '171282' and almacen = 'f' order by FECHA desc


