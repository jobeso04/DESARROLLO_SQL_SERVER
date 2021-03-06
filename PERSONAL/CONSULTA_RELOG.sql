/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT a.codigo,nombre, fecha  FROM 
[BDPERSONAL].[dbo].[marcas_relog] a left join 
[BDPERSONAL].[dbo].[MAESTRO] b on b.dni_relog = a.CODIGO 
where fecha between CONVERT(datetime, '2018-01-12', 101) + CAST('00:00:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-12', 101) + CAST('23:59:00' AS DATETIME)
    order by NOMBRE, fecha  
    
    
select * from   [BDPERSONAL].[dbo].[marcas_relog] where  fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('00:00:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) order by codigo 
    
  
select * from MAESTRO where DNI_RELOG = '1160078'  

select * from RELOGDIGI where Codigo = '1160078' order by Fecha desc

select * from RELOGDIGI where relog = 1  order by Fecha, hora desc

use bdpersonal  
  select a.Codigo, a.Fecha, a.Hora, b.NOMBRE from dbo.RELOGDIGI a left join maestro b on a.codigo = b.dni_relog 
where a.Fecha = convert(datetime, '2018-01-11', 101) order by b.NOMBRE 

select * from RELOGDIGI order by Fecha desc

select * from RELOGDIGI where Codigo = '40260380' order by Fecha desc

select * from RELOGDIGI where fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('00:00:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) order by hora desc
    
    

select dni_relog,* from MAESTRO where NOMBRE like 'duran%'



select * from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('00:00:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) and RELOG = 1  order by hora desc


select * from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('00:00:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) order by fecha desc 



select * from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('14:24:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) order by fecha desc 


INSERT INTO [BDPERSONAL].[dbo].[RELOGDIGI]([IdRelog],[Codigo],[Fecha],[Hora],[Relog])
     VALUES 
           (<IdRelog, numeric(18,0),>
           ,<Codigo, int,>
           ,<Fecha, datetime,>
           ,<Hora, nvarchar(8),>
           ,<Relog, nvarchar(1),>)
GO


select [IdRelog],[Codigo],[Fecha],[Hora],[Relog] from [BDPERSONAL].[dbo].[RELOGDIGI] order by IdRelog desc

1337863

select codigo, convert(datetime, convert(date, fecha), 101) as fecha, CONVERT(time(5), fecha) as hora
 from [BDPERSONAL].[dbo].[marcas_relog] where fecha between CONVERT(datetime, '2018-01-11', 101) + CAST('14:24:00' AS DATETIME)
    and CONVERT(datetime, '2018-01-11', 101) + CAST('23:59:00' AS DATETIME) order by fecha desc 
