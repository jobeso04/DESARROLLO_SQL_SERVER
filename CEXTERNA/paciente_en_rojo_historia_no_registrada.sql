/* resolver problema en donde los pacientes aparecen en ROJO y no se pueden registrar la atencion : es necesario cambiar est_pac a estado 2*/


select * from CONSULTORIO where NOMBRE like '%nutricion%'
select * from atencionc where FECHA = CONVERT(datetime, '2016-02-27', 101) and CONSULTORIO = '5070'

select * from atencionc where FECHA = CONVERT(datetime, '2016-02-27', 101) and NOMBRES like '%solano%'

select * from atencionc where FECHA = CONVERT(datetime, '2016-02-27', 101) and TURNO = 'Tarde'  order by NOMBRES asc

use SIGSALUD
select * from ARCHIVO_MOV where FECHA = CONVERT(datetime, '2016-02-27', 101) and TURNO = 'T'  and CONSULTORIO = '5070' order by NOMBRES asc

SELECT ID_CITA,estado FROM ARCHIVO_MOV WHERE EST_PAC='1' and ID_CITA='160012745'

SELECT ID_CITA,estado FROM ARCHIVO_MOV WHERE EST_PAC='1' and ID_CITA='160012746'


SELECT ID_CITA,estado, EST_PAC FROM ARCHIVO_MOV WHERE ID_CITA='160012745' /* correcto */

SELECT ID_CITA,estado, EST_PAC FROM ARCHIVO_MOV WHERE ID_CITA='160012746' /* incorrecto */

/* update ARCHIVO_MOV set EST_PAC='2' where ID_CITA in ('160012746', '160012747', '160012750', '160012751', '160012752', '160012753') */

use SIGSALUD
SELECT ID_CITA,estado, EST_PAC FROM ARCHIVO_MOV where ID_CITA in ('160012746', '160012747', '160012750', '160012751', '160012752', '160012753')