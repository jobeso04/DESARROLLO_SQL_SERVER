/* PROGRAMA PARA ACTUALIZAR STOCK */

declare @lcproforma varchar(50) = '1718005560'
select * from [SIGSALUD].[dbo].[ORDENC] where ORDENID = @lcproforma
select * from [SIGSALUD].[dbo].[ORDEND] where ORDENID = @lcproforma


/* lectura de variables */


declare @lcproforma varchar(10) = '1718005560'
declare @lc_almacen char(2) = 'F'
declare @lc_item varchar(10) = '170098'
declare @lncantidad NUMERIC(18,2) = 2
declare @ld_fecha datetime = CONVERT(datetime, '2018-01-04', 101) + CAST('12:01:00' AS DATETIME)
declare @ld_fecha_proceso datetime = CONVERT(datetime, '2018-01-04', 101)
declare @lt_hora_proceso time 
declare @lc_tipo_transaccion varchar(3) = 'VC'
DECLARE @lnstock_item NUMERIC(18,2) = (select stock from [SIGSALUD].[dbo].[STOCK] where ITEM =  @lc_item and  almacen = @lc_almacen)
declare @lnsaldo NUMERIC(18,2) = @lnstock_item - @lncantidad
declare @lnprecio numeric(18,5) = 0.3210
declare @lnpromedio numeric(18,5) = 0.00
declare @lc_laboratorio char(10) = '0'
declare @lcmarca varchar(20) = ''
declare @lclote varchar(20) = ''
declare @lcregistro varchar(20) = ''
declare @ldfechavencimiento datetime  = ''
declare @lc_operacion char(9) = (select top 1 convert(int,  OPERACION)  from [SIGSALUD].[dbo].[KARDEX] order by OPERACION desc) + 1
INSERT INTO [SIGSALUD].[dbo].[KARDEX]

([ALMACEN],[ITEM],[FECHA],[TIPO_TRANSACCION],[IDTRANSACCION],[STOCK],[CANTIDAD],[SALDO],[PRECIO],[PROMEDIO],
          [LABORATORIO],[MARCA],[LOTE],[REGISTRO],[FECHA_VENCIMIENTO],[OPERACION])
values (@lc_almacen, @lc_item, @ld_fecha, @lc_tipo_transaccion, @lcproforma, @lnstock_item, @lncantidad, @lnsaldo, @lnprecio, @lnpromedio, @lc_laboratorio, @lcmarca, @lclote, @lcregistro, @ldfechavencimiento, @lc_operacion)


UPDATE [SIGSALUD].[dbo].[STOCK] SET Stock= @lnsaldo WHERE Item=@lc_item And Almacen=@lc_almacen
UPDATE [SIGSALUD].[dbo].[ORDENC]SET Estado='3', Fecha_Proceso=@ld_fecha_proceso, Hora_Proceso=hora WHERE OrdenId= @lcproforma
Update [SIGSALUD].[dbo].[ORDEND] set Estado='3' WHERE OrdenId= @lcproforma
