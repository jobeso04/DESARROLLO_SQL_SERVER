/* seguimiento al calculo del reporte  PRE ICI */

 truncate table  [SIGSALUD].[dbo].[TMP_PRE_ICI]
  INSERT INTO [SIGSALUD].[dbo].[TMP_PRE_ICI]([CLASE],[NOMBRE_CLASE], [ITEM], [SISMED], [NOMBRE], [PRESENTACION], DFECHA_INICIO_PROCESO)
  select b.CLASE, b.NOMBRE as NOMBRE_CLASE, a.ITEM, A.interfase2 AS SISMED, UPPER(a.NOMBRE) as nombre, UPPER(A.PRESENTACION) AS PRESENTACION, GETDATE() AS DFECHA_INICIO_PROCESO
	     from [SIGSALUD].[dbo].[ITEM] a   left join [SIGSALUD].[dbo].[CLASE] b on a.CLASE = b.CLASE where  SUBSTRING(A.item,1,2) = '17' and A.ITEM = '170648' 
 SELECT * FROM [SIGSALUD].[dbo].[TMP_PRE_ICI] ORDER BY NOMBRE ASC
 
 
 /* STOCK EN ALMACEN */
declare @lfechainicio datetime = convert(datetime, '2018-02-28',101) +  CAST('00:00:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2018-03-28',101) + CAST('23:59:59' AS DATETIME)
declare @lcitem varchar(13) = '170648'
SELECT top 1 SALDO as STOCK_ALMACEN FROM [SIGSALUD].[dbo].[KARDEX] WHERE ITEM = @lcitem AND ALMACEN = 'A'  and fecha between @lfechainicio and @lfechafin ORDER BY FECHA DESC


/* STOCK DE FARMACIA */
  declare @loperacion1 varchar(8) = '18079845'
  declare @loperacion2 varchar(8) = '18135030'
  declare @lcitemfar varchar(13) = '170648'
  select top 1 SALDO as STOCK_FARMACIA from [SIGSALUD].[dbo].[KARDEX] where ITEM = @lcitemfar and ALMACEN = 'F' and OPERACION between @loperacion1 and @loperacion2 order by operacion desc
   
/* STOCK N CONSULTORIO */
   declare @loperacion1 varchar(8) = '18079845'
  declare @loperacion2 varchar(8) = '18135030'
  declare @lcitemfar varchar(13) = '170648'
   select top 1 SALDO as STOCK_FARMACIA from [SIGSALUD].[dbo].[KARDEX] where ITEM = @lcitemfar and ALMACEN = 'C' and OPERACION between @loperacion1 and @loperacion2 order by operacion desc
   
/* STOCK ANTERIOR */
 declare @lcitemfar varchar(13) = '170648'
 declare @lfechainicio datetime = convert(datetime, '2018-02-28',101) +  CAST('00:00:00' AS DATETIME)
 select top 1 SALDO as STOCK_FARMACIA  from [SIGSALUD].[dbo].[KARDEX] where ITEM = @lcitemfar and ALMACEN = 'C' AND FECHA < @lfechainicio order by operacion desc


/* VER PRECIO */

  declare @lcitemprecio varchar(13) = '170648'
  SELECT TOP 1 PRECIOPUB FROM [SIGSALUD].[dbo].[PRECIO] where ITEM = @lcitemprecio ORDER BY FECHA DESC

   


