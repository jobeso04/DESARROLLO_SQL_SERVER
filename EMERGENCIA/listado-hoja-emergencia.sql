
select * from [SIGSALUD].[dbo].[V_EMERGENCIA] where FECHA between CONVERT(datetime, '2016-01-01', 101) and CONVERT(datetime, '2016-12-31', 101)
order by FECHA, ORDEN


select * from [SIGSALUD].[dbo].[V_EMERGENCIA] where FECHA between CONVERT(datetime, '2017-01-01', 101) and CONVERT(datetime, '2017-12-31', 101)
order by FECHA, ORDEN