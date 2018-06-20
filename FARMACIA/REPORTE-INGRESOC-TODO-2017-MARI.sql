

select * from [SIGSALUD].[dbo].[INGRESOC] where FECHA between CONVERT(datetime, '2017-01-01', 101) and CONVERT(datetime, '2017-12-31', 101)
and ALMACEN = 'A' order by FECHA 