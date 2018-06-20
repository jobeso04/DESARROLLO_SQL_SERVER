
/* para eliminar a partir del numero y a partir de la fecha */

declare @lc_consultorio varchar(5) = '1027'
declare @lc_medico varchar(4) = 'ACJ'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 2
declare @nnumero int = 13
select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero
    and estado = 1 ORDER BY FECHA 

/*** eliminar segun esos filtros **/
declare @lc_consultorio varchar(5) = '1034'
declare @lc_medico varchar(4) = 'CMP'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 16
declare @nnumero int = 13
delete from  [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
  and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  and estado = 1
  
/**  fin de eliminar con esos filtros */
    
    
    
    
   
/* PARA ELIMINAR de todo el mes */
declare @lc_consultorio varchar(5) = '2021'
declare @lc_medico varchar(4) = 'CMR'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @nnumero int = 9
DELETE FROM [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio 
   AND CONVERT(INT, NUMERO) >= @nnumero and estado = 1
  
