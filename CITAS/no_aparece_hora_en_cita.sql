update CONSULTORIO_PARAMETRO set no_mostrar_hora_numero = '13' where CONSULTORIO in ('2021')
update CONSULTORIO_PARAMETRO set no_mostrar_hora_numero = '13' where CONSULTORIO in ('1013', '1024')
update CONSULTORIO_PARAMETRO set no_mostrar_hora_numero = '12' where CONSULTORIO in ('2024')
update CONSULTORIO_PARAMETRO set no_mostrar_hora_numero = ATENCIONES_DIA where CONSULTORIO in ('1028')

select CONSULTORIO, TURNO_CONSULTA, ATENCIONES_DIA, NO_MOSTRAR_HORA_NUMERO from CONSULTORIO_PARAMETRO
