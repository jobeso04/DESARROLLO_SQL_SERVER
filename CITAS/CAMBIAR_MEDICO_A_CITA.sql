
use SIGSALUD
select * from CITA where CITA_ID = '160075819'

/* update CITA set CONSULTORIO = '5090', MEDICO = 'CPP' where CITA_ID = '160075819'
update ARCHIVO_MOV set  CONSULTORIO = '5090', MEDICO = 'CPP' where id_cita = '160075819' */

select * from archivo_mov where id_cita = '160075819'



5090  
CPP


select * from CONSULTORIO order by CONSULTORIO asc

select * from medico where NOMBRE like '%castro%'

select * from V_CONSULTORIO_PARAMETRO
