
/* para eliminar a partir del numero y a partir de la fecha */

declare @lc_consultorio varchar(5) = '1050'
declare @lc_medico varchar(4) = 'TSR'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 6
declare @nnumero int = 19

select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero
    and estado = 1 ORDER BY FECHA 

    
delete from  [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
  and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  and estado = 1
  

use SIGSALUD  
  select * from CONSULTORIO_PARAMETRO where consultorio = '1020'
  
