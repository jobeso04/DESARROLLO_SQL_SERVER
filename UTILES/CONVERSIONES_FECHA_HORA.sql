declare @h1 as time;
declare @h2 as time

set @h1 = '12:00:13'
set @h2 = '09:00:00'

select @h1 as horaActual , @h2 as fecha2, DATEDIFF( n , @h2 , @h1 )  as diferencia

-- CONVERSION DE NUMEROS A CHARCTERES
 
Select  convert(CHAR, MIN(HORA)) as hormin from RELOGDIGI
Select  MIN(HORA) as hormin from RELOGDIGI

SELECT CONVERT(INT, 32.2)


