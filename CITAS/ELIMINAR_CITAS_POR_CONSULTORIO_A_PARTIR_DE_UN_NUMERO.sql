
/* PARA ELIMINAR A PARTIR DE UN NUMERO LOS CONSULTORIOS EN CITAS */

declare @lc_consultorio varchar(5) = '2027'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 1
declare @nnumero int = 1
 
select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia and estado = '1'  AND CONVERT(INT, NUMERO) >= @nnumero
  
  ORDER BY FECHA, TURNO_CONSULTA,  CONVERT(INT, NUMERO)    
  
  
 
  /*
delete from  [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
  and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  and estado = 1
  */