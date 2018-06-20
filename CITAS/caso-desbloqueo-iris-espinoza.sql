declare @lcid_cita varchar(20) = '170081077'

use SIGSALUD
select ESTADO, CITA_ID, nombre from cita where  cita_id = @lcid_cita
select ESTADO, ID_CITA, NOMBRES from atencionc where  id_cita = @lcid_cita
select ESTADO, EST_PAC, NOMBRES from ARCHIVO_MOV where  id_cita = @lcid_cita



use SIGSALUD
select MEDICO, NOMBRE from medico order by NOMBRE asc

select MEDICO, NOMBRE from medico order by NOMBRE asc




update use SIGSALUD

select * from CITA where CITA_ID = '170073673'

select * from ATENCIONC where id_CITA = '170073673'

select * from ATENCIONd where id_CITA = '170073673'

delete from ATENCIONd where id_CITA = '170073673'

select * from ARCHIVO_MOV where id_CITA = '170073673'

update ARCHIVO_MOV set est_pac = '4' where id_CITA = '170073673'



update ATENCIONC set ESTADO = '4' where id_CITA = '170073673'

/* cuando se bloquea por error una atencion se debe desbloquear en citas, pacientes y en la tabla atencionc */


use sigsalud
select ESTADO, CITA_ID, nombre from cita where  cita_id = '170089901'
ESTADO = '4'

select ESTADO, ID_CITA, NOMBRES from atencionc where  id_cita = '170089901'
ESTADO = '0'
select ESTADO, EST_PAC, NOMBRES from ARCHIVO_MOV where  id_cita = '170089901'
EST_PAC = '3'


select ESTADO, CITA_ID, nombre from cita where  cita_id = '170086815 '
select ESTADO, ID_CITA, NOMBRES from atencionc where  id_cita = '170086815 '
select ESTADO, EST_PAC, NOMBRES from ARCHIVO_MOV where  id_cita = '170086815 '





