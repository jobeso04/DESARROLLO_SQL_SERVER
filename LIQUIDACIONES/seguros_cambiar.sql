use sigsalud	
/** para cambiar el seguro debemos cambiar el la tabla paciente, emergencia, y en la tabla cuenta */


select * from cuenta where CUENTAID = '1648591'

update cuenta set seguro = '05' where CUENTAID = '1648591'


select * from seguro