/* para cambiar medico de una ciat se debe cambiar en dos tablas en la tabla cita y en la tabla_archivo_mov */


use sigsalud
update CITA set MEDICO = 'WHW' where CITA_ID = '170063918'
update ARCHIVO_MOV set MEDICO = 'WHW' where ID_CITA = '170063918'

update CITA set MEDICO = 'WHW' where CITA_ID = '170063919'
update ARCHIVO_MOV set MEDICO = 'WHW' where ID_CITA = '170063919'

update CITA set MEDICO = 'WHW' where CITA_ID = '170063916'
update ARCHIVO_MOV set MEDICO = 'WHW' where ID_CITA = '170063916'

update CITA set MEDICO = 'WHW' where CITA_ID = '170063920'
update ARCHIVO_MOV set MEDICO = 'WHW' where ID_CITA = '170063920'

update CITA set MEDICO = 'WHW' where CITA_ID = '170063917'
update ARCHIVO_MOV set MEDICO = 'WHW' where ID_CITA = '170063917'

