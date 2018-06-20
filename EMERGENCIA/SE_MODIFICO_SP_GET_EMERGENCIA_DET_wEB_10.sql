USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_DET_WEB_10]    Script Date: 05/23/2016 19:20:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[SP_GET_EMERGENCIA_DET_WEB_10] (
@p_id_emergencia VARCHAR(10)
)
AS BEGIN

SET LANGUAGE Spanish

SELECT
*
FROM (
	SELECT
	T1.id_eme_det_web,
	MED.MEDICO AS codigo_profesional,
	RTRIM(MED.ABREVIATURA) abreviatura,
	MED.ABREVIATURA + '. ' + MED.NOMBRE AS profesional,
	CASE
	WHEN UW.FOTO != '' OR UW.FOTO != NULL THEN UW.FOTO
	ELSE UW.SEXO + '/' + MED.ABREVIATURA + '.jpg' 
	END AS foto,
	CONVERT(VARCHAR(10), T1.FECHA, 103) fecha,
	CONVERT(VARCHAR(6), T1.HORA, 108) + ' '  +  RIGHT(CONVERT(VARCHAR(30), T1.HORA, 9), 2) hora,
	T1.emergencia_id,
	T1.detalle,
	EPE.DESCRIPCION AS procedimiento, 
	CASE
	WHEN EPE.TIPO_HIDRICO = 'I' THEN 'INGRESO' 
	WHEN EPE.TIPO_HIDRICO = 'E' THEN 'EGRESO' 
	END AS tipo_hidrico,
	T1.temp, 
	RTRIM(CONVERT(CHAR, T1.PAS)) + '/' + RTRIM(CONVERT(CHAR, T1.PAD)) AS pa,
	T1.fc,
	T1.fr,
	T1.sat_ox,
	T1.peso,
	ELW.DESCRIPCION AS lugar,
	RTRIM(T1.tipo_proceso) tipo_proceso, 
	T1.estado,
	T1.paciente,
	T1.via_oral,
	T1.parenteral,
	T1.tratamiento,
	T1.transfusiones,
	T1.infusiones,
	T1.h2o,
	T1.otros_i,
	(T1.VIA_ORAL + T1.PARENTERAL + T1.TRATAMIENTO + T1.TRANSFUSIONES + T1.INFUSIONES + T1.H2O + T1.OTROS_I) AS subtotal_i,
	T1.diuresis,
	T1.deposiciones,
	T1.drenajes,
	T1.vomitos,
	T1.perd_insens,
	T1.otros_e,
	(T1.DIURESIS + T1.DEPOSICIONES + T1.DRENAJES + T1.VOMITOS + T1.PERD_INSENS + T1.OTROS_E) AS subtotal_e,
	(T1.VIA_ORAL + T1.PARENTERAL + T1.TRATAMIENTO + T1.TRANSFUSIONES + T1.INFUSIONES + T1.H2O + T1.OTROS_I) - (T1.DIURESIS + T1.DEPOSICIONES + T1.DRENAJES + T1.VOMITOS + T1.PERD_INSENS + T1.OTROS_E) AS bh_parcial,
	CASE
	T1.TURNO WHEN 'D' THEN 'Diurno'
	WHEN 'N' THEN 'Nocturno' 
	END AS turno,
	T1.nro_horas, 
	EM.ESTADO AS estado_emergencia_id,
	MED2.ABREVIATURA + ' ' + MED2.NOMBRE AS ahora_profesional,
	CON.NOMBRE AS antes_consul,
	CON2.NOMBRE AS ahora_consul,
	T1.FACTOR1, T1.FACTOR2, T1.FACTOR3  
	FROM dbo.EMERGENCIA_DET_WEB AS T1 
	INNER JOIN dbo.MEDICO AS MED ON MED.MEDICO = T1.PROFESIONAL 
	INNER JOIN dbo.USUARIO_WEB AS UW ON MED.DNI = UW.DNI 
	INNER JOIN dbo.EMERGENCIA_LUGAR_WEB AS ELW ON T1.LUGAR = ELW.LUGAR 
	LEFT OUTER JOIN dbo.EMERGENCIA_PROCE_ENF AS EPE ON T1.PROCEDIMIENTO = EPE.CODIGO 
	INNER JOIN EMERGENCIA AS EM ON T1.EMERGENCIA_ID = EM.EMERGENCIA_ID 
	LEFT JOIN MEDICO AS MED2 ON MED2.MEDICO = T1.AHORA_PROFESIONAL 
	LEFT JOIN CONSULTORIO AS CON ON T1.ANTES_CONSULT = CON.CONSULTORIO 
	LEFT JOIN CONSULTORIO AS CON2 ON T1.AHORA_CONSULT = CON2.CONSULTORIO
	WHERE T1.EMERGENCIA_ID = @p_id_emergencia
	AND T1.ESTADO = 1

	UNION ALL

	SELECT 
	T1.ID_ORDEN_EXAMEN AS id_eme_det_web,
	T1.MEDICO AS codigo_profesional,
	RTRIM(T2.ABREVIATURA) abreviatura,
	T2.ABREVIATURA + '. ' + T2.NOMBRE AS profesional, 
	CASE
	WHEN T3.FOTO != '' OR T3.FOTO != NULL THEN T3.FOTO 
	ELSE T3.SEXO + '/' + T2.ABREVIATURA + '.jpg' 
	END AS foto,
	CONVERT(VARCHAR(10), T1.fecha, 103) fecha,
	CONVERT(VARCHAR(6), T1.HORA, 108) + ' '  +  RIGHT(CONVERT(VARCHAR(30), T1.HORA, 9), 2) hora,
	T1.ID_ATENCION AS emergencia_id,
	NULL AS detalle,
	NULL AS procedimiento,
	NULL AS tipo_hidrico,
	NULL AS temp,
	NULL AS pa,
	NULL AS fc,
	NULL AS fr,
	NULL AS sat_ox,
	NULL AS peso,
	T1.AREA AS lugar,
	'EXA' AS tipo_proceso,
	T1.estado,
	NULL AS paciente,
	NULL AS via_otral,
	NULL AS parenteral,
	NULL AS tratamiento,
	NULL AS transfusiones,
	NULL AS infusiones,
	NULL AS h2o,
	NULL AS otros_i,
	NULL AS subtotal_i,
	NULL AS diuresis,
	NULL AS deposiciones,
	NULL AS drenajes,
	NULL AS vomitos,
	NULL AS perd_insens,
	NULL AS otros_e,
	NULL AS subtotal_e,
	NULL AS bh_parcial,
	NULL AS turno,
	NULL AS nro_horas,
	NULL AS estado_emergencia_id,
	NULL AS ahora_profesional,
	NULL AS antes_consul,
	NULL AS ahora_consul,
	'' FACTOR1, '' FACTOR2, '' FACTOR3  
	FROM ORDEN_EXAMEN_WEB T1 
	INNER JOIN MEDICO T2 ON  T2.MEDICO = T1.MEDICO
	INNER JOIN USUARIO_WEB T3 ON T3.DNI = T2.DNI
	WHERE T1.ID_ATENCION = @p_id_emergencia
	AND T1.ESTADO = 1
	
) AS TT1
/* ORDER BY fecha ASC, hora ASC */
 ORDER BY convert(datetime, fecha, 103) ASC, hora asc 
END



GO


