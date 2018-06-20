/*  OBTENER LAS ACTIVIDADES PARA GENERAR LAS CITAS */
--     declare @lcperiodo varchar(6) = convert(varchar(4), @lnanio) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), @lnmes))),2)

	declare @lccodigo_medico varchar(10) = '084414'
	declare @lnmes int = 1
	declare @lnanio int = 2018
	declare @ln_actividad int = 4
	select ('DIA' + RIGHT('00' + Ltrim(Rtrim(CONVERT(VARCHAR(2), DIA))),2) ) AS DIA, CONVERT(DATETIME, (CONVERT(VARCHAR(4), ANIO)  + '-' + CONVERT(VARCHAR(2), MES) + '-' + CONVERT(VARCHAR(2), DIA)), 101) AS FECHA, TURNO, HORAS  
	from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where CODIGO = @lccodigo_medico and ANIO =  @lnanio and MES = @lnmes and ID_ACTIVIDAD = @ln_actividad
	order by CONVERT(int, dia)

