/* problema en reporte de guardia no efectuada */

/* este problema ocurre con una vista */

use BDPERSONAL
UPDATE ASISTENCIA  SET PRODUCTIVA=0,OBSERVACION='.' where año = 2017 and mes = 7
SELECT * from V_ASISTENCIA where CODACT like '%G%' AND año = 2017 and mes =  7  order by nombre,dia 

/* esta instruccion es la clave */

SELECT * from V_ASISTENCIA where CODACT like '%G%' AND año = 2017 and mes =  7 and DNI_RELOG is null

/* el probelames que el dni relog no esta igual que el dni del trabajador */

/* solucion */

select nombre, dni, dni_relog from MAESTRO where CODIGO in ('084758', '084759')

update MAESTRO set dni_relog = convert(int, dni) where CODIGO in ('084758', '084759')





SELECT * from V_ASISTENCIA where CODACT like '%G%' AND año = 2017 and mes =  7 and codigo = '084339' order by nombre,dia 






select dni_actual, DNI, DNI_RELOG from MAESTRO where DNI = '10698883'

select * from dni


select * from asistencia where SITUACION is null 

 
8 -4


select * from RELOGDIGI where Codigo = 10698883 order by Fecha desc



