/* ara que sea todo el servicio de psicologia */
/* para varios consultorio */
declare @lt_consultorio table (consultorio varchar(4) )
insert into @lt_consultorio
VALUES ('2022')
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 2
declare @nnumero int = 19
/*
select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO IN (SELECT * FROM @lt_consultorio)
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1
  ORDER BY FECHA, TURNO_CONSULTA,  CONVERT(INT, NUMERO)    
*/

delete [SIGSALUD].[dbo].[CITA] where CONSULTORIO in (select consultorio from @lt_consultorio)
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1
