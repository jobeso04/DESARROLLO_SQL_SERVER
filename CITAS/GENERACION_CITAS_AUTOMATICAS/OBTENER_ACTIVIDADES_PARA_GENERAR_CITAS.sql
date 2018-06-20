/*  OBTENER LAS ACTIVIDADES PARA GENERAR LAS CITAS */
	declare @lcconsultorio varchar(6) = '1095' 
	declare @lcmedico varchar(3) = 'CAK'
	declare @lnmes int = 12
	declare @lnanio int = 2017
    declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), @lnmes))),2)
    declare @lc_servicio varchar(2) = (SELECT TOP 1 SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]  WHERE CONSULTORIO = @lcconsultorio)
	declare @lc_codigo varchar(13) = (SELECT CODIGO FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE DNI_ACTUAL IN (select DNI from [SIGSALUD].[dbo].[MEDICO] where MEDICO = @lcmedico))
	declare @ln_actividad int = 4
	select ('DIA' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2) ) AS DIA, CONVERT(DATETIME, (CONVERT(VARCHAR(4), ANIO)  + '-' + CONVERT(VARCHAR(2), MES) + '-' + CONVERT(VARCHAR(2), DIA)), 101) AS FECHA, TURNO, HORAS  
	from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = @lc_codigo and ANIO =  @lnanio and MES = @lnmes and ID_ACTIVIDAD = @ln_actividad
	order by CONVERT(int, dia)
