use BDPERSONAL

select * from ASISTENCIA where A�O = 2016 and MES = 4 and CODIGO = '084074'

update ASISTENCIA set indicador = '4' where A�O = 2016 and MES = 4 and CODIGO in ('084074', '084113')