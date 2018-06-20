

select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
 from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-15', 101) + CAST('09:07:54' AS DATETIME)
    and CONVERT(datetime, '2018-01-15', 101) + CAST('17:00:00' AS DATETIME) order by  hora desc



select [IdRelog],[Codigo],[Fecha],[Hora],[Relog] from [BDPERSONAL].[dbo].[RELOGDIGI]
where Fecha = CONVERT(datetime, '2018-01-15', 101) and relog = 1 order by Codigo  


select [IdRelog],[Codigo],[Fecha],[Hora],[Relog] from [BDPERSONAL].[dbo].[RELOGDIGI]
where Fecha = CONVERT(datetime, '2018-01-15', 101) and relog = '1' order by Codigo  



  select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
   from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-15', 101) + CAST('09:07:54' AS DATETIME)
       and CONVERT(datetime, '2018-01-15', 101) + CAST('17:00:00' AS DATETIME) order by  hora desc
       


select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
   from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-15', 101) + CAST('00:07:54' AS DATETIME)
       and CONVERT(datetime, '2018-01-15', 101) + CAST('17:00:00' AS DATETIME) order by  hora desc
  



select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
   from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-15', 101) + CAST('00:00:00' AS DATETIME)
       and CONVERT(datetime, '2018-01-15', 101) + CAST('23:59:00' AS DATETIME) order by  hora 
  
  
select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
   from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-15', 101) + CAST('00:00:00' AS DATETIME)
       and CONVERT(datetime, '2018-01-15', 101) + CAST('23:59:00' AS DATETIME) and codigo = 10173369