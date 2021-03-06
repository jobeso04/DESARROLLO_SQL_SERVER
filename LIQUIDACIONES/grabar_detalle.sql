/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [ITEM]
      ,[FECHA]
      ,[HORA]
      ,[PROMEDIO]
      ,[COSTO]
      ,[UTILIDAD]
      ,[PRECIOPUB]
      ,[DESCUENTO]
      ,[PRECIO]
      ,[SYSINSERT]
      ,[SYSUPDATE]
      ,[INGRESOID]
      ,[DOCUMENTO]
  FROM [SIGSALUD].[dbo].[V_PRECIO]
  
  SELECT ITEM, CODCPT, NOMBRE, SUBSTRING(UNIDOS,1,250) AS UNIDOS, PRECIO FROM  [SIGSALUD].[dbo].[V_PRECIO_CREDITO] WHERE nombre like '%' + '' + '%'
  
    SELECT ITEM, CODCPT, NOMBRE, SUBSTRING(UNIDOS,1,250) AS UNIDOS, PRECIO FROM [SIGSALUD].[dbo].[V_PRECIO_SIS] WHERE nombre like '%' + 'SUTURA' + '%'
    
INSERT INTO [SIGSALUD].[dbo].[CUENTADET]([CUENTAID],[ITEM],[PRECIO],[CANTIDAD],[IMPORTE],[DESCUENTO],[TOTAL],[TIPO_PAGO],[CATEGORIA],[ORDENID])
     VALUES (@lcuentaid, lc_item, @lnprecio, @lncantidad, @lnprecio*@lncantidad,0,  @lnprecio*@lncantidad
     
           (<CUENTAID, char(7),>
           ,<ITEM, char(10),>
           ,<PRECIO, numeric(18,4),>
           ,<CANTIDAD, numeric(10,0),>
           ,<IMPORTE, numeric(18,3),>
           ,<DESCUENTO, numeric(18,3),>
           ,<TOTAL, numeric(18,3),>
           ,<TIPO_PAGO, char(2),>
           ,<CATEGORIA, char(3),>
           ,<ORDENID, varchar(10),>)
GO

select ITEM, CODCPT, NOMBRE, UNIDOS, PRECIO from [SIGSALUD].[dbo].[V_PRECIO_SOAT]

use sigsalud
select [CUENTAID],[ITEM],[PRECIO],[CANTIDAD],[IMPORTE],[DESCUENTO],[TOTAL],[TIPO_PAGO],[CATEGORIA],[ORDENID] from [SIGSALUD].[dbo].[CUENTADET]
order by CUENTAID desc


    