
declare @lcfecha1 datetime = convert(datetime, '2017-11-06', 101) + CAST('00:00:00' AS DATETIME)
declare @lcfecha2 datetime = convert(datetime, '2017-11-06', 101) + CAST('23:59:59' AS DATETIME)

-- declare @lnstock_inicio int select 
/*
select item, COUNT(item) as operaciones  from [SIGSALUD].[dbo].[KARDEX] where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = 'F'
and TIPO_TRANSACCION like 'V%' group by item order by ITEM asc
*/

/*
select * from [SIGSALUD].[dbo].[KARDEX] where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = 'F'
and TIPO_TRANSACCION like 'V%' and ITEM = '170048' order by OPERACION asc 
*/

DECLARE @lcitem VARCHAR(13) = '170098'
declare @lcalmacen varchar(50) = 'FARMACIA'
declare @lctipo_almacen varchar(1) = 'F'
declare @lcnombre varchar(250) = (select nombre from [SIGSALUD].[dbo].[item] where ITEM = @lcitem)
declare @lnstock_inicio int = (select top 1 stock from [SIGSALUD].[dbo].[KARDEX] where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = @lctipo_almacen
and TIPO_TRANSACCION like 'V%' and ITEM = @lcitem order by OPERACION asc )
declare @lnsalida int = (select sum(cantidad) as Canti  from [SIGSALUD].[dbo].[KARDEX] where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = @lctipo_almacen
and TIPO_TRANSACCION like 'V%' and ITEM = @lcitem)
declare @lntock int = (select top 1 SALDO  from [SIGSALUD].[dbo].[KARDEX] where FECHA between @lcfecha1 and @lcfecha2 and ALMACEN = @lctipo_almacen
and TIPO_TRANSACCION like 'V%' and ITEM = @lcitem  order by OPERACION desc)
declare @ln_stock_actual int = (select stock from [SIGSALUD].[dbo].[stock] where ITEM = @lcitem and ALMACEN = @lctipo_almacen)
select @lcalmacen AS ALMACEN, upper(@lcnombre) as NOMBRE, @lnstock_inicio as INICIO, @lnsalida as SALIDA, @lntock as STOCK_FINAL_DIA, @ln_stock_actual AS STOCK_ACTUAL








