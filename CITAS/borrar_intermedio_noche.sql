use SIGSALUD
select * from CONSULTORIO_PARAMETRO where TURNO_CONSULTA = 'I'

select * from consultorio where consultorio in (select consultorio from CONSULTORIO_PARAMETRO where TURNO_CONSULTA in ('I', 'N') and CONSULTORIO <> '4044' )


delete from CONSULTORIO_PARAMETRO where TURNO_CONSULTA in ('I', 'N') and CONSULTORIO <> '4044' 

select * from CONSULTORIO_PARAMETRO where TURNO_CONSULTA in ('I', 'N') and CONSULTORIO <> '4044' 