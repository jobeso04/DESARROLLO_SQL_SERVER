/* este es el ingreso de farmacia a almacen */

declare @lid_ingreso varchar(13) = '18000153'
declare @lc_item varchar(13) = '171476'
select * from [SIGSALUD].[dbo].[INGRESOC] where INGRESOID = @lid_ingreso
select * from [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = @lid_ingreso
select SUM(importe) as total from [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = @lid_ingreso
select * from [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = @lid_ingreso and ITEM = @lc_item

select 1384.66 - 368.13
/* delete from [SIGSALUD].[dbo].[INGRESOD] where INGRESOID = '18000153' and ITEM = '171476' */