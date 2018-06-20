
use sigsalud
select * from atencionc where  NOMBRES like 'quispe guede%' order by FECHA desc

select * from CITA where NOMBRE like 'quispe guede%' order by FECHA desc

select * from CITA where CITA_ID = '160013423'

select * from archivo_mov where id_CITA = '160013423'

/* update archivo_mov set medico = 'LNH' where id_CITA = '160013423' */

/* update CITA set medico = 'LNH' where CITA_ID = '160013423' */
LNH

select * from MEDICO  where NOMBRE like 'luyo%'