
use BDPERSONAL

select * from dbo.RELOGDIGI order by Fecha desc


select * from dbo.RELOGDIGI where Fecha = convert(datetime, '2018-01-12', 101) and codigo = '7654933'

select DNI_RELOG from MAESTRO where codigo = '084316'


select * from MAESTRO where NOMBRE like 'chave%'



select * from dbo.RELOGDIGI where Fecha = convert(datetime, '2018-01-12', 101) and codigo = '40702247'

select a.Codigo, a.Fecha, a.Hora, b.NOMBRE from dbo.RELOGDIGI a left join maestro b on a.codigo = b.dni_relog 
where a.Fecha = convert(datetime, '2018-01-13', 101) order by b.NOMBRE 

use BDPERSONAL
select a.Codigo, a.Fecha, a.Hora, b.NOMBRE from dbo.RELOGDIGI a left join maestro b on a.codigo = b.dni_relog 
where a.Fecha = convert(datetime, '2017-12-29', 101) order by b.NOMBRE 


delete from dbo.RELOGDIGI where Codigo = 2

delete from dbo.RELOGDIGI where (Codigo) < 7 order by Fecha  desc


select * from MAESTRO where DNI_RELOG = 511161



select * from dbo.RELOGDIGI order by IdRelog desc

select * from maestro where dni_relog = 43546642
