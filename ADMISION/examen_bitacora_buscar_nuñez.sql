/* VER CASO DE CITAS ELIMINADAS */

USE SIGSALUD
declare @luser varchar(14) = 'llujan'
declare @lcfecha1 varchar(14) = '2017-02-23'
declare @lchora1 varchar(14) = '07:00:00'
declare @lcfecha2 varchar(14) = '2017-02-24'
declare @lchora2 varchar(14) = '07:15:00'
declare @lmodulo varchar(15) = 'ADMISION'

SELECT * FROM BITACORA where 
fecha between convert(datetime, @lcfecha1,101) +  CAST(@lchora1 AS DATETIME)  and convert(datetime, @lcfecha2,101) +  CAST(@lchora2 AS DATETIME)
and MODULO = @lmodulo AND USUARIO = 'EHUACACHEP:ADMISION-42' ORDER BY FECHA DESC




SELECT * FROM CITA WHERE PACIENTE = '2008073599' ORDER BY FECHA_PROGRAMACION DESC
SELECT * FROM CITA WHERE cita_id = '160077413' ORDER BY FECHA_PROGRAMACION DESC
SELECT * FROM atencion_seguro  WHERE PACIENTE = '2008073599' ORDER BY FECHA_ATENCION DESC
/* aqui se observa que esta en estado 3, es decir no debe pasar pr el filtro de la cita liberada */
/* backup: 20/06/2016 - 16:45 am - OK*/
/* backup: 21/06/2016 - 00:00 am - OK */
/* backup: 22/06/2016 - 00:00 am - OK*/
/* backup: 22/06/2016 - 06:45 am - OK*/

