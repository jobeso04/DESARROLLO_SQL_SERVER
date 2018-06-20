use BDPERSONAL
select * from MAESTRO where NOMBRE like 'ramo%'


084105


select * from MAESTRO where CODIGO = '084105' 

select * from ASISTENCIA where codigo = '084105' and MES = 11 and año = 2016 order by DIA asc

select * from ASISTENCIA where codigo = '084105' and MES = 11 and año = 2016 and convert(int, dia) > = 12  and codact <> 'D' order by DIA asc 

use BDPERSONAL
update ASISTENCIA set CODACT = 'M3', HORAI = '07:00:00', HORAS = '13:00:00' where codigo = '084105' and MES = 11 and año = 2016 and convert(int, dia) > = 12  and codact <> 'D'

select * from dbo.T_Horarios

M3 - 07:00 - 13:00
