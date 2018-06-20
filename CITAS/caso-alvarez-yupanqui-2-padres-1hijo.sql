use sigsalud

select * from cuenta where cuentaid = '1716638'

update cuenta set PACIENTE = '2017273051', NOMBRE = 'ALVAREZ ANGELES BETSABE ELIF' where cuentaid = '1716638'

select * from PACIENTE where historia = '0247848'

select * from PACIENTE where historia = '0246538'

delete from PACIENTE where PACIENTE = '2017271741'

select * from ORDENC where PACIENTE = '2017271741'


update ORDENC set paciente = '2017273051' where PACIENTE = '2017271741'
delete from PACIENTE where PACIENTE = '2017271741'


select * from cuenta where PACIENTE = '2017271741'

update cuenta set PACIENTE = '2017273051', NOMBRE = 'ALVAREZ ANGELES BETSABE ELIF' where cuentaid in ('1716638', '1714871', '1714872')


0247848             


select * from ATENCION_SEGURO where SEGURO = '0246538'

select * from ARCHIVO_MOV where historia = '0246538'


update cuenta set PACIENTE = '2017273051', NOMBRE = 'ALVAREZ ANGELES BETSABE ELIF' where cuentaid in ('1716638', '1714871', '1714872')
update ORDENC set paciente = '2017273051' where PACIENTE = '2017271741'
delete from PACIENTE where PACIENTE = '2017271741'





