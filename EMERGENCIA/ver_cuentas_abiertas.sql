use SIGSALUD
declare @lidcuenta varchar(13) = '1775927' 
select emergencia_id, cuentaid, ESTADO, fecha_salida, SEGURO  from EMERGENCIA where ESTADO = '4' and seguro = '01' order by EMERGENCIA_ID desc


select * from cuenta where cuentaid = @lidcuenta
select * from CUENTADET where cuentaid = @lidcuenta


use SIGSALUD
select cuentaid, ESTADO, fecha_salida, SEGURO  from EMERGENCIA where cuentaid = '1772183'