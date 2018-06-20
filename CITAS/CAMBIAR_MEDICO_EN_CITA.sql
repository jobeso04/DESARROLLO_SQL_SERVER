use  sigsalud
select * from cita where CITA_ID = '170067986'

use  sigsalud
select * from cita where CITA_ID = '170064066'
union all
select * from cita where CITA_ID = '170064070'
union all
select * from cita where CITA_ID = '170064075'
union all
select * from cita where CITA_ID = '170064084'



select * from medico 

WHW.JPG    

update CITA set MEDICO = 'WHW' WHERE CITA_ID IN ('170064066', '170064070', '170064075', '170064084')

SELECT * FROM ARCHIVO_MOV WHERE ID_CITA IN ('170064066', '170064070', '170064075', '170064084')


update ARCHIVO_MOV set MEDICO = 'WHW' WHERE ID_CITA IN ('170064066', '170064070', '170064075', '170064084')


select * from 





update CITA set seguro = '05' where CITA_ID = '170067986'



