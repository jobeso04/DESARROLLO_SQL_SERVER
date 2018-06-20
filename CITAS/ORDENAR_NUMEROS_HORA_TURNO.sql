
declare @lc_consultorio varchar(6) = '5050' 
declare @lc_medico  varchar(6) = 'LNH' 
declare @lc_turno varchar(1) = 'T'
declare @lnanio int = 2017
declare @lnmes int = 12
DECLARE @lndia int = 6
declare @ln_minutos_consulta int = (select tiempo_n from [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] where CONSULTORIO = @lc_consultorio and TURNO_CONSULTA = @lc_turno)
declare @lc_horario_inicio varchar(6) = (select HORARIO_DE from [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] where CONSULTORIO = @lc_consultorio and TURNO_CONSULTA = @lc_turno)
SELECT @lc_horario_inicio AS HORA_INICIO, @ln_minutos_consulta as MINUTOS, CITA_ID, NUMERO, HORA, TURNO_CONSULTA FROM [SIGSALUD].[dbo].[CITA] WHERE CONSULTORIO = @lc_consultorio AND MEDICO =  @lc_medico AND TURNO_CONSULTA = @lc_turno
and YEAR(fecha) = @lnanio and MONTH(fecha) = @lnmes  and DAY(fecha) = @lndia order by NUMERO 


 