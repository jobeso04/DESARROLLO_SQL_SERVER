DECLARE @lc_consultorio_origen varchar(5) = '4093' 
declare @lc_medico varchar(4) =  'TSR'
declare @lnmes int = 12
declare @lnanio int = 2017
declare @lc_consultorio_destino  varchar(5) = '5020'
/*
 SELECT * FROM [SIGSALUD].[dbo].[CITA]  WHERE CONSULTORIO = @lc_consultorio_origen  AND MEDICO = @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio 
SELECT * FROM [SIGSALUD].[dbo].[archivo_mov]  WHERE CONSULTORIO = @lc_consultorio_origen  AND MEDICO = @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
*/

update [SIGSALUD].[dbo].[CITA] set CONSULTORIO = @lc_consultorio_destino  
where CONSULTORIO = @lc_consultorio_origen  AND MEDICO = @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio

update [SIGSALUD].[dbo].[archivo_mov]  set CONSULTORIO = @lc_consultorio_destino  
WHERE CONSULTORIO = @lc_consultorio_origen  AND MEDICO = @lc_medico  AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
