Select  MIN(HORA) as hormin from RELOGDIGI

DECLARE @DateNow smalldatetime
SET @DateNow='12:30'
select @DateNow

select time(CAST( '11:30' as datetime ) - CAST( '13:30' as datetime ))

DECLARE @DateNow smalldatetime
SET @DateNow = GETDATE() -- 2009-05-08 12:58:02.680

SELECT CONVERT(CHAR(5), (Select  MIN(HORA) as hormin from RELOGDIGI), 12) 
-- this returns the time portion as 12:58

 Select  MIN(HORA) as hormin from RELOGDIGI 
 
 declare @h1 time = '12:00:13'
 declare @h2 time = '12:35:13'
 SELECT @h1 as xh1, @h2 as xh2
 
 
 select @h1 as horaActual , @fecha2 as fecha2, DATEDIFF( MI , @fecha2 , @horaActual )  as diferencia
 
 
 declare @h1 as time;
 declare @h2 as time
 

set @horaActual = GETDATE()
set @fecha2 = '09:00:00'

select @horaActual as horaActual , @fecha2 as fecha2, DATEDIFF( MI , @fecha2 , @horaActual )  as diferencia