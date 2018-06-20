/* CAMBGIAR EL DETALLE DE UNA CUENTA EN OTRA, INCLUIDO FARMACIA */



declare @lc_cuenta_origen varchar(13) = '1762231'
declare @lc_cuenta_destino varchar(13) =  '1763233'
update [SIGSALUD].[dbo].[CUENTA] set CARGO = (select CARGO from [SIGSALUD].[dbo].[CUENTA] where CUENTAID = @lc_cuenta_origen), 
DESCUENTO = (select descuento from [SIGSALUD].[dbo].[CUENTA] where CUENTAID = @lc_cuenta_origen), 
IMPORTE = (select importe from [SIGSALUD].[dbo].[CUENTA] where CUENTAID = @lc_cuenta_origen) where CUENTAID = @lc_cuenta_destino
update [SIGSALUD].[dbo].[CUENTADET] set CUENTAID = @lc_cuenta_destino where CUENTAID = @lc_cuenta_origen
update [SIGSALUD].[dbo].[CUENTA] set CARGO = 0, DESCUENTO = 0, IMPORTE = 0 where CUENTAID = @lc_cuenta_origen 
UPDATE [SIGSALUD].[dbo].[ORDENC] SET CUENTAID = @lc_cuenta_destino  WHERE CUENTAID =  @lc_cuenta_origen


select * from CUENTA where CUENTAID = '1762231'
select * from CUENTADET where CUENTAID = '1762231'


select * from CUENTA where CUENTAID = '1763233'
select * from CUENTADET where CUENTAID = '1763233'


select * from CUENTADET where ITEM = '607224    ' order by CUENTAID desc


SELECT ITEM, CODCPT, NOMBRE, precio FROM [SIGSALUD].[dbo].[V_PRECIO_SIS] WHERE NOMBRE LIKE 'CONSULTA%'


select ITEM, CODCPT, NOMBRE, UNIDOS, PRECIO from [SIGSALUD].[dbo].[V_PRECIO_SOAT]

     SELECT ITEM, CODCPT, NOMBRE, SUBSTRING(UNIDOS,1,250) AS UNIDOS, PRECIO FROM [SIGSALUD].[dbo].[V_PRECIO_SIS]
     
     
     select * from INGRESOC where INGRESOID = '17000442'