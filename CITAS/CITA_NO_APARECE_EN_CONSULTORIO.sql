/* CUANDO LA CIAT NO APARACE EN EL CONSULTORIO DE DETERMINADO DOCTOR */


/* CAMBIAR ARCHIVOS : CITA, ARCHIVO_MOV */ 
use SIGSALUD
select * from ARCHIVO_MOV where historia = '0110287'  /* 160032137  */
/* update ARCHIVO_MOV set est_pac = '2' where historia = '0110287' */
/* update ARCHIVO_MOV set est_pac = '2' where historia = '0110287'
update ARCHIVO_MOV set est_pac = '2' where historia = '0110287' */
select * from atencionc where NOMBRES LIKE '%FUNDAR%' ORDER BY FECHA DESC

select * from paciente where historia = '0110287' /* 2008109798 */

select * from cita where PACIENTE = '2008109798'
select * from MEDICO where MEDICO = 'VNC'

select * from MEDICO where MEDICO = 'SSR'

select * from MEDICO where nombre like '%salguedo%'

08392977

select * from USUARIO where NOMBRE like '%HILARIO%'

SELECT * FROM CITA WHERE CITA_ID = '160038453'

SELECT * FROM ARCHIVO_MOV WHERE ID_CITA = '160038453'

/* UPDATE ARCHIVO_MOV SET MEDICO = 'VNC' WHERE ID_CITA = '160038453'
UPDATE CITA SET MEDICO = 'VNC' WHERE CITA_ID = '160038453' */


SELECT * FROM ATENCIONC WHERE ID_CITA = '160038453'

SELECT * FROM USUARIO_WEB WHERE NOMBRES LIKE 'VALVERDE NARVAEZ%'
