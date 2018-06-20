

select * from [SIGSALUD].[dbo].[ITEM] order by  ITEM desc
select * from [SIGSALUD].[dbo].[ITEM] where activo = '1' order by  ITEM desc
select * from [SIGSALUD].[dbo].[ITEM] where activo = '7' order by  ITEM desc


select ITEM, CODCPT, NOMBRE from [SIGSALUD].[dbo].[ITEM] where activo = '1' and  substring(item,1,1) = '6' order by  ITEM desc

select ITEM, CODCPT, NOMBRE from [SIGSALUD].[dbo].[ITEM] where activo = '7' and  substring(item,1,1) = '6' order by  ITEM desc


