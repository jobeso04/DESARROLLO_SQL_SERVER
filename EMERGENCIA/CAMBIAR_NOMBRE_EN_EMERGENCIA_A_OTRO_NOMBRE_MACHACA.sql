use SIGSALUD 

select * from EMERGENCIA where NOMBREs like 'huachaca%' order by fecha_salida desc


select * from v_EMERGENCIA where EMERGENCIA_ID = '13044071'

select * from EMERGENCIA where EMERGENCIA_ID = '13044071'

select * from PACIENTE where PACIENTE = '2013229090'


update EMERGENCIA set paterno = 'HUAMAN', MATERNO = 'PORRAS', NOMBRE = 'LEONARDO ANDRE', NOMBRES = 'HUAMAN PORRAS LEONARDO ANDRE', PACIENTE = '2013229090',
fecha_nacimiento = convert(datetime, '1998-12-27', 101), EDAD = '015a01m00d', DIRECCION = 'CALLE INCA GARCILAZO DE LA VEGA 451'   where EMERGENCIA_ID = '13044071'


select * from ATENCION_SEGURO where NOMBRES like 'huachaca co%' order by FECHA_ATENCION asc

select * from ATENCION_SEGURO where numatencion = '210130334806'



update EMERGENCIA set paterno = 'HUAMAN', MATERNO = 'PORRAS', NOMBRE = 'LEONARDO ANDRE', NOMBRES = 'HUAMAN PORRAS LEONARDO ANDRE', PACIENTE = '2013229090',
fecha_nacimiento = convert(datetime, '1998-12-27', 101), EDAD = '015a01m00d', DIRECCION = 'CALLE INCA GARCILAZO DE LA VEGA 451'   where EMERGENCIA_ID = '13044071'