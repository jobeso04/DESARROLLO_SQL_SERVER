use BDPERSONAL
go
/* select * from asistencia where SITUACION IS NULL */
/* select * from maestro where codigo in (select CODIGO from asistencia where SITUACION IS NULL group by CODIGO)  order by NOMBRE asc*/


/* select * from asistencia where OBSERVACION IS NULL */

use bdpersonal
select * from ASISTENCIA where SITUACION IS NULL
select * from ASISTENCIA where OBSERVACION IS NULL

 /* UPDATE ASISTENCIA SET SITUACION = '' WHERE SITUACION IS NULL  */
 /* UPDATE ASISTENCIA SET OBSERVACION = '' WHERE OBSERVACION IS NULL */
 
 
 SELECT * from V_ASISTENCIA 
 where año = '2015' and mes = '10' AND COD_SITUA IN ('06') AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G' order by nombre,dia
 
 
 
 
 
 SELECT * from V_ASISTENCIA 
 where año = '2015' and mes = '10' AND COD_SITUA IN ('06') AND SITUACION NOT IN ('D','I','V') AND CODACT NOT IN ('D','V','L','DM') AND SUBSTRING (CODACT,1,1)<>'G' 
   AND DNI_RELOG IS NULL order by nombre,dia
 
 SELECT * from ASISTENCIA 
 where año = '2015' and mes = '10' AND DNI_RELOG IS NULL 
 
 
 SELECT DNI, DNI_RELOG from MAESTRO  WHERE CODIGO = '084633'
 
 
 
 SELECT * from V_ASISTENCIA where CODACT like '%G%' AND año = 2017 and mes = 6 and dni_relog is null order by nombre,dia 
use BDPERSONAL
update MAESTRO set dni_relog = DNI where CODIGO = '084748'

 
 
 