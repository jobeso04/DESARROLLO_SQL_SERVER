/* ara que sea todo el servicio de MEDICINA INTERNA */
/* para varios consultorio */
declare @lt_consultorio table (consultorio varchar(4) )
insert into @lt_consultorio
select CONSULTORIO from [SIGSALUD].[dbo].[CONSULTORIO] where abreviatura like 'MEDINTER%' and substring(CONSULTORIO,1,1) = '1'  
/* para un solo consultorio */
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 2
declare @nnumero int = 19
DECLARE @lc_medico varchar(5) = 'MTA'
DELETE FROM  [SIGSALUD].[dbo].[CITA] where CONSULTORIO IN (SELECT CONSULTORIO FROM @lt_consultorio)
AND MEDICO <> @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  
 and estado = 1





select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO IN (SELECT CONSULTORIO FROM @lt_consultorio)
AND MEDICO <> @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  
 and estado = 1 ORDER BY FECHA, TURNO_CONSULTA,  CONVERT(INT, NUMERO)    
 
DELETE FROM  [SIGSALUD].[dbo].[CITA] where CONSULTORIO IN (SELECT CONSULTORIO FROM @lt_consultorio)
AND MEDICO <> @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  
 and estado = 1
 
 






select CONSULTORIO  from [SIGSALUD].[dbo].[CONSULTORIO] where abreviatura like 'psico%' and substring(CONSULTORIO,1,1) = '5'  

select CONSULTORIO from [SIGSALUD].[dbo].[CONSULTORIO] where abreviatura like 'MEDINTER%' and substring(CONSULTORIO,1,1) = '1'  



delete [SIGSALUD].[dbo].[CITA] where CONSULTORIO in (select consultorio from @lt_consultorio)
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1




select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO in (select consultorio from @lt_consultorio)
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1 ORDER BY FECHA 
 

delete [SIGSALUD].[dbo].[CITA] where CONSULTORIO in (select consultorio from @lt_consultorio)
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1
 



select CONSULTORIO  from [SIGSALUD].[dbo].[CONSULTORIO] where abreviatura like 'psico%' and 
substring(CONSULTORIO,1,1) = '5'  


declare @lc_consultorio varchar(5) = '5070'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 2
declare @nnumero int = 21
/*
select medico, FECHA, HORA, TURNO_CONSULTA, NUMERO from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
 AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1 ORDER BY FECHA, TURNO_CONSULTA,  CONVERT(INT, NUMERO)    
*/

delete from  [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero   and estado = 1

 



