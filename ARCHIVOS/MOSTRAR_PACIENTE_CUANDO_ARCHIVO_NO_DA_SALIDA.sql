/* arreglar en archivo_mov, cuando no aparece el paciente */

use SIGSALUD
update ARCHIVO_MOV set ESTADO = '3', FECHA_SAL = CONVERT(datetime, '2016-03-14', 101), HORA_SAL = '03:20 PM', FECHA_ING = CONVERT(datetime, '2016-03-14', 101),
   EST_PAC = '3'  where ID_CITA = '160036268'