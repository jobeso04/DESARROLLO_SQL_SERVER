/* VER CASO DE CITAS ELIMINADAS */

USE SIGSALUD
declare @luser varchar(14) = 'llujan'
declare @lcfecha1 varchar(14) = '2017-03-11'
declare @lchora1 varchar(14) = '07:00:00'
declare @lcfecha2 varchar(14) = '2017-03-11'
declare @lchora2 varchar(14) = '23:15:00'
declare @lmodulo varchar(15) = 'ADMISION'

select * from EMERGENCIA where USUARIO  = 'ELOAYZA' and fecha between convert(datetime, @lcfecha1,101) +  CAST(@lchora1 AS DATETIME)  and convert(datetime, @lcfecha2,101) +  CAST(@lchora2 AS DATETIME)

select * from ATENCION_sEGURO where USUARIO  = 'ELOAYZA' ORDER BY FECHA_ATENCION  DESC


SELECT * FROM BITACORA where 
fecha between convert(datetime, @lcfecha1,101) +  CAST(@lchora1 AS DATETIME)  and convert(datetime, @lcfecha2,101) +  CAST(@lchora2 AS DATETIME)
and MODULO = @lmodulo and pc like 'SEG%'ORDER BY FECHA DESC


AND USUARIO = 'EHUACACHEP:ADMISION-42'



select * from EMERGENCIA where USUARIO like 'eloay%' and fecha between convert(datetime, @lcfecha1,101) +  CAST(@lchora1 AS DATETIME)  and convert(datetime, @lcfecha2,101) +  CAST(@lchora2 AS DATETIME)


SELECT * FROM CITA WHERE PACIENTE = '2008073599' ORDER BY FECHA_PROGRAMACION DESC
SELECT * FROM CITA WHERE cita_id = '160077413' ORDER BY FECHA_PROGRAMACION DESC
SELECT * FROM atencion_seguro  WHERE PACIENTE = '2008073599' ORDER BY FECHA_ATENCION DESC
/* aqui se observa que esta en estado 3, es decir no debe pasar pr el filtro de la cita liberada */
/* backup: 20/06/2016 - 16:45 am - OK*/
/* backup: 21/06/2016 - 00:00 am - OK */
/* backup: 22/06/2016 - 00:00 am - OK*/
/* backup: 22/06/2016 - 06:45 am - OK*/

