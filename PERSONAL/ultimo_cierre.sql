
use BDPERSONAL
select * from ASISTENCIA where AÑO = 2016 and MES = 4 and codigo in ('084222')


/* update ASISTENCIA set INDICADOR = '4' where AÑO = 2016 and MES = 4 and codigo in ('084401', '084468', '054011', '084607', '084584', '084638') */

/* update ASISTENCIA set INDICADOR = '4' where AÑO = 2016 and MES = 4 and codigo in ('084401', '084468', '054011', '084607', '084584', '084638') */

/* update ASISTENCIA set INDICADOR = '4' where AÑO = 2016 and MES = 4 and IdServDepartUnid = '48'  */
use BDPERSONAL
select * from ASISTENCIA where AÑO = 2016 and MES = 4 and IdServDepartUnid = '48' 

use BDPERSONAL
select * from dbo.ServicioDepartUnidad where IdServDepartUnid = 25

45

use bdpersonal
select * from ASISTENCIA where IdServDepartUnid = 25 and AÑO = '2016'  and MES = 4
select * from ASISTENCIA where AÑO = '2016'  and MES = 4 and IdServDepartUnid = 45

use bdpersonal
update ASISTENCIA set INDICADOR = '4' where AÑO = '2016'  and MES = 4 and IdServDepartUnid = 25