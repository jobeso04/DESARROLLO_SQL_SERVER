   declare @lcproforma varchar(10) = ?lc_proforma
         declare @lc_almacen char(2) = 'F'
         declare @lc_item varchar(10) = ?lcitem
         declare @lncantidad NUMERIC(18,2) = ?lncanti
         declare @ld_fecha datetime = CONVERT(datetime, '2018-01-04', 101) + CAST('12:01:00' AS DATETIME)
         declare @ld_fecha_proceso datetime = CONVERT(datetime, '2018-01-04', 101)
         declare @lt_hora_proceso time 
         declare @lc_tipo_transaccion varchar(3) = 'VC'
         DECLARE @lnstock_item NUMERIC(18,2) = (select stock from [SIGSALUD].[dbo].[STOCK] where ITEM =  @lc_item and  almacen = @lc_almacen)
         declare @lnsaldo NUMERIC(18,2) = @lnstock_item - @lncantidad
         declare @lnprecio numeric(18,5) = ?lnprecio
         declare @lnpromedio numeric(18,5) = 0.00
         declare @lc_laboratorio char(10) = '0'
         declare @lcmarca varchar(20) = ''
         declare @lclote varchar(20) = ''
         declare @lcregistro varchar(20) = ''
         declare @ldfechavencimiento datetime  = ''
         declare @lc_operacion char(9) = (select top 1 convert(int,  OPERACION)  from [SIGSALUD].[dbo].[KARDEX] order by OPERACION desc) + 1
         select @lc_operacion
         
         INSERT INTO [SIGSALUD].[dbo].[KARDEX]([ALMACEN],[ITEM],[FECHA],[TIPO_TRANSACCION],[IDTRANSACCION],[STOCK],[CANTIDAD],[SALDO],[PRECIO],[PROMEDIO],
                   [LABORATORIO],[MARCA],[LOTE],[REGISTRO],[FECHA_VENCIMIENTO],[OPERACION])
                   
                     
         values (@lc_almacen, @lc_item, @ld_fecha, @lc_tipo_transaccion, @lcproforma, @lnstock_item, @lncantidad, @lnsaldo, @lnprecio, @lnpromedio, @lc_laboratorio, @lcmarca, @lclote, @lcregistro, @ldfechavencimiento, @lc_operacion)
        UPDATE [SIGSALUD].[dbo].[STOCK] SET Stock= @lnsaldo WHERE Item=@lc_item And Almacen=@lc_almacen
        UPDATE [SIGSALUD].[dbo].[ORDENC]SET Estado='3', FECHA =@ld_fecha_proceso, Fecha_Proceso=@ld_fecha_proceso, Hora_Proceso=hora WHERE OrdenId= @lcproforma
        Update [SIGSALUD].[dbo].[ORDEND] set Estado='3' WHERE OrdenId= @lcproforma
        
        
        
        SELECT *  FROM  kardex WHERE IDTRANSACCION = '18000163'  AND MONTH(FECHA) = 3
        
        declare @lnopera int = (SELECT top 1 OPERACION  FROM  kardex order by FECHA  desc)
        declare @ln
        select @lnopera, convert(char(9), convert(int, @lnopera) + 1)
        
                select convert(int, SELECT top 1 OPERACION  FROM  kardex order by FECHA  desc)
                SELECT top 1 OPERACION  FROM  kardex order by OPERACION   desc
        
        
        select top 1 saldo from kardex where item = '171308' order by FECHA 
        select top 1 saldo from kardex where item = '171308' order by OPERACION
        
        
         SELECT * FROM  TRANSFERENCIAD WHERE TRANSFERENCIAID = '18000163' 
         
          SELECT *  FROM  TRANSFERENCIAD WHERE TRANSFERENCIAID = '18000163' 
         
         
        declare @lc_item varchar(10) = '170047'
        DECLARE @ln_stock_antes int = (select top 1 saldo from kardex where item = @lc_item order by OPERACION)
        DECLARE @ln_canti int = 50
        DECLARE @lc_almacen varchar(2) = 'F'
        DECLARE @lnprecio NUMERIC (8,3) = 53.2
        declare @lc_operacion char(9) = (select top 1 convert(int,  OPERACION)  from [SIGSALUD].[dbo].[KARDEX] order by OPERACION desc) + 1
        DECLARE @lnstock_item NUMERIC(18,2) = (select stock from [SIGSALUD].[dbo].[STOCK] where ITEM =  @lc_item   and  almacen =@lc_almacen)
        declare @lnsaldo NUMERIC(18,2) = @lnstock_item -  @ln_canti
        INSERT INTO [SIGSALUD].[dbo].[KARDEX]([ALMACEN],[ITEM],[FECHA],[TIPO_TRANSACCION],[IDTRANSACCION],[STOCK],[CANTIDAD],[SALDO],[PRECIO],[PROMEDIO],[LABORATORIO],[MARCA],[LOTE],
                     [REGISTRO],[FECHA_VENCIMIENTO],[OPERACION])
        values (@lc_almacen, @lc_item, getdate(), 'STR', '18000163', @ln_stock_antes, @ln_canti, @ln_stock_antes - @ln_canti, @lnprecio, '0', '', '', '', '', '', @lc_operacion)
        UPDATE [SIGSALUD].[dbo].[STOCK] SET Stock= @lnsaldo WHERE Item=@lc_item And Almacen=@lc_almacen
         
        select * from [SIGSALUD].[dbo].[KARDEX] order by FECHA desc
        select * from [SIGSALUD].[dbo].[stock] where ALMACEN = 'f'
        
        
        select * from KARDEX where IDTRANSACCION = '18000163' and item = '170053' order by ITEM 
                select * from KARDEX where item = '170053' order by FECHA desc

select * from stock where item = '170053'

        