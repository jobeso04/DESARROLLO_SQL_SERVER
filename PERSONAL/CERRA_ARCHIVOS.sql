use BDPERSONAL

select * from ASISTENCIA where AÑO = 2016 and MES = 4 and CODIGO = '084074'

update ASISTENCIA set indicador = '4' where AÑO = 2016 and MES = 4 and CODIGO in ('084074', '084113')