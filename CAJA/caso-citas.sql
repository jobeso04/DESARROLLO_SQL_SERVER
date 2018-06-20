use SIGSALUD
select * from ATENCIONC where ID_CITA in (select id_cita from ATENCIOND where DX = '9712401')

select * from ATENCIOND where DX = '9712401'

update ATENCIONC set  nombres = 'LIMO ÑINGLE ISABEL' where ID_CITA = '170097023'
update ATENCIONC set  nombres = 'ACUÑA MENDOZA ROBERTO' where ID_CITA = '170096878'

select * from PACIENTE where HISTORIA = '0221933             '