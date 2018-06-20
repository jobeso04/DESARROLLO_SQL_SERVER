/* sobre el caso de como graba en el sistema de asistencia */

SELECT	*  FROM	[BDPERSONAL].[dbo].[ASISTENCIA]  WHERE año = '2014'   AND MES = 2 and CODIGO = '084005' 

SELECT	*  FROM	[BDPERSONAL].[dbo].[ASISTENCIA] order by AÑO desc

select * from [BDPERSONAL].[dbo].[MAESTRO] where CODIGO = '084005' 

declare @lc_codigo_personal varchar(6) = '084357'
declare @lndia int = 1
declare @lnmes int = 2
declare @lnanio int = 2018
declare @ln_indicador_unidad int = 41
INSERT INTO [BDPERSONAL].[dbo].[ASISTENCIA]([CODIGO],[CODACT],[DIA],[MES],[AÑO],[TIPO],[HORAI],[HORAS],[HORAI_REG],[HORAS_REG],[HORA_PRG],[MIN_ADIC],[OBSERVACION],[FALTA],
     [TARDANZA],[PERMISO],[PRODUCTIVA],[INDICADOR],[SITUACION],[HORAI_REG1],[HORAS_REG1],[IdServDepartUnid])
 VALUES (@lc_codigo_personal, 'D', @lndia, @lnmes, @lnanio, 'V', '00:00', '00:00', '', '', 'D', '', '', 0,0,0,0,1,'','','',@ln_indicador_unidad)




INSERT INTO [BDPERSONAL].[dbo].[ASISTENCIA]   "+
					"	( "+
					"		CODIGO, "+
					"		CODACT, "+
					"		DIA, "+
					"		MES, "+
					"		"+anio+", "+
					"		TIPO, "+
					"		HORAI, "+
					"		HORAS, "+
					"		HORA_PRG, "+
					"		FALTA, "+
					"		TARDANZA, "+
					"		PERMISO, "+
					"		INDICADOR, "+
					"		IdServDepartUnid,	"+
					"		PRODUCTIVA "+
					"	) "+
					"SELECT	 "+
					"		'"+s_codigo+"', "+
					"		'D' AS CODACT, "+
					"		DIA, "+
					"		MES, "+
					"		"+s_anio+", "+
					"		'"+tipo+"', "+
					"		'00:00' AS HORAI, "+
					"		'00:00' AS HORAS, "+
					"		HORA_PRG, "+
					"		0 AS FALTA, "+
					"		0 AS TARDANZA, "+
					"		0 AS PERMISO, "+
					"		1 AS INDICADOR, "+
					"		"+s_servicio+" as SERVICIO,	"+
					"		0 AS PRODUCTIVA "+
					"  FROM	ASISTENCIA "+
					" WHERE	"+anio+" = '2014' "+
					"   AND	MES = '"+s_mes+"' "+
					"   AND	CODIGO = '084005' ";