use sigsalud
select ESTADO, * from cita where CITA_ID = '160169609'

select * from ARCHIVO_MOV where ID_CITA = '160169609'


select * from CITA where FECHA between convert(datetime, '2016-12-28', 101) and convert(datetime, '2016-12-28', 101) and MEDICO = 'TSR'


use SIGSALUD
select * from CITA where FECHA_OTORGA < convert(datetime, '2016-12-28', 101) and MEDICO = 'TSR' order by FECHA_OTORGA desc


use SIGSALUD
select * from CITA where FECHA_OTORGA = convert(datetime, '2016-12-24', 101) and MEDICO = 'TSR'

select * from v_CITA where FECHA =  convert(datetime, '2016-12-24', 101) and MEDICO = 'TSR' order by FECHA_OTORGA desc

select * from CITA where  MEDICO = 'TSR' order by FECHA desc

select * from CITA where  MEDICO = 'TSR' order by FECHA_otorga desc

use sigsalud
select * from ATENCIONC where  MEDICO = 'TSR'   order by FECHA desc
select * from ATENCIONC where  MEDICO = 'TSR'  and fecha = convert(datetime, '2016-12-24', 101) order by FECHA desc

use BDPERSONAL
select * from MAESTRO where NOMBRE like '%toledo%'

select * from asistencia2 where CODIGO = '084129'

use bdpersonal
select * from RELOGDIGI where Codigo = 7684125 order by Fecha desc



