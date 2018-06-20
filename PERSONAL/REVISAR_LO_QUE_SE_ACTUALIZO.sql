/* Revisar la Actualizacion por Unidad */
use BDPERSONAL 
select * from dbo.ServicioDepartUnidad

/* Cerrado para el dia : 21/03/2016 */
select * from dbo.ServicioDepartUnidad where IdServDepartUnid in (select IdServDepartUnid 
from asistencia where AÑO = 2016 and mes = 4 and IdServDepartUnid in ('2', '11', '15', '61', '47', '104', '47', '89', '40', '45', '52', '12') 
   group by IdServDepartUnid)  order by IdDepartUnid 
   
/* Ejecutado para el dia : 21/03/2016 */
/*  update asistencia set indicador = '4' where AÑO = 2016 and mes = 4 and IdServDepartUnid in ('2', '11', '15', '61', '47', '104', '47', '89', '40', '45', '52', '12') */

/*  ***************************************************************************  */

/* Para el 23 de Marzo 2016 */



use BDPERSONAL 
select * from dbo.ServicioDepartUnidad  WHERE Nombre like '%MEDICINA%'


/* enfermeras */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('28', '30', '58', '59', '60', '61', '65', '67', '68', '69', '70', '71',
  '72', '74', '75', '76', '78', '80', '81',  '82', '83', '84') 

/* limpieza y transporte */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('4', '8')

/* medico - cirugia  */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('46', '8')

/* medico - SEGUROS   */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('13')

/* NUTRICION - PSICOLOGIA -FARMACIA   */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('24', '27', '26')

/* TRAUMATOLOGIA - MEDICOS */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('33')

/* SERVICIO DE MEDICINA */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('16', '17', '18', '19', '20', '41', '42', '43', '44', '88', '94', '102')

/* SERVICIO MEDICO - AUDITOR - CALIDAD */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('87')

/* SERVICIO APOYO AL DIAGNOSTICO */
select * from ASISTENCIA where año = 2016 and mes = 4 and IdServDepartUnid in ('21', '22', '23')

/* ACTUALIZACION MASIVA DE UNIDADES */
update asistencia set indicador = '4' where AÑO = 2016 and mes = 4 and IdServDepartUnid in 
('28', '30', '58', '59', '60', '61', '65', '67', '68', '69', '70', '71',
  '72', '74', '75', '76', '78', '80', '81',  '82', '83', '84', '4', '8', '46', '13', '24', '27', '26', '33', '16', '17', '18', '19', '20', '41', '42', '43', '44', '88', '94', '102', '87', '21', '22', '23') 


select * from dbo.ServicioDepartUnidad where IdServDepartUnid in (select IdServDepartUnid 
from asistencia where AÑO = 2016 and mes = 4 and IdServDepartUnid in ('28', '30', '58', '59', '60', '61', '65', '67', '68', '69', '70', '71',
  '72', '74', '75', '76', '78', '80', '81',  '82', '83', '84', '4', '8', '46', '13', '24', '27', '26', '33', '16', '17', '18', '19', '20', '41', '42', '43', '44', '88', '94', '102', '87', '21', '22', '23') 
   group by IdServDepartUnid)  order by IdDepartUnid 



use BDPERSONAL 
select * from dbo.ServicioDepartUnidad  WHERE Nombre like '%plas%'


use BDPERSONAL 
update asistencia set indicador = '4' where AÑO = 2016 and mes = 4 and IdServDepartUnid in ('66', '86', '50')

'30', '58', '59', '60', '61', '65', '67', '68', '69', '70', '71',
  '72', '74', '75', '76', '78', '80', '81',  '82', '83', '84', '4', '8', '46', '13', '24', '27', '26', '33', '16', '17', '18', '19', '20', '41', '42', '43', '44', '88', '94', '102', '87', '21', '22', '23') 
  
  
select * from dbo.ServicioDepartUnidad where IdServDepartUnid in (select IdServDepartUnid 
from asistencia where AÑO = 2016 and mes = 4 and IdServDepartUnid in ('66', '86', '50')
   group by IdServDepartUnid)  order by IdDepartUnid   

