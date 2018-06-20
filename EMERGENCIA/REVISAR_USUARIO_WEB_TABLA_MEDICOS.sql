

use sigsalud
select DNI, NOMBRES,ESTADO, FOTO from USUARIO_WEB where CARGO in ('MEDICO', 'ENFERMERO', 'TECNICO') AND DNI IN (select DNI from MEDICO where ABREVIATURA in ('MED', 'ODO', 'TEC', 'ENF'))

select DNI, * from MEDICO where ABREVIATURA in ('MED', 'ODO', 'TEC', 'ENF')

