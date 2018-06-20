USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_18_OBS_BF]    Script Date: 09/05/2017 16:02:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GET_EMERGENCIA_18_OBS_BF](
@p_fecha VARCHAR(10),
@p_nombres VARCHAR(80),
@p_id_consultorio VARCHAR(10),
@p_mispacientes INT,
@p_profesional VARCHAR(8), 
@p_id_emergencia_estado VARCHAR(1)
)
AS BEGIN

SET LANGUAGE Spanish

DECLARE @abreviatura VARCHAR(5)
DECLARE @estado CHAR(1)
DECLARE @medico CHAR(3)
DECLARE @date_from VARCHAR(10) = CONVERT(VARCHAR(10), DATEADD(DAY, -1, @p_fecha), 103)

SELECT
@abreviatura = ABREVIATURA,
@medico = MEDICO
FROM MEDICO
WHERE DNI = @p_profesional

IF (@abreviatura IN ('MED', 'OBS') AND (@p_mispacientes = 1))
	SET @estado = 3
ELSE IF (@abreviatura IN ('OBS', 'ENF', 'TEC')) OR (@p_mispacientes = 0)
BEGIN
	SET @estado = 2
	SET @medico = ''
END

SELECT
T1.emergencia_id,
T1.estado,
T1.id_emergencia_ubicacion evolucion,
CASE
WHEN LTRIM(RTRIM(T1.ciex4)) = '0' THEN ''
WHEN LTRIM(RTRIM(T1.ciex4)) <> '' THEN T1.CIEX4
ELSE ''
END ciex,
T1.nombres,
CONVERT(VARCHAR(10), T1.FECHA, 103) fecha,
T1.hora,
T1.orden,
T2.historia,
T1.sexo,
T3.nombre seguro,
SUBSTRING(T4.nombre, 1, CHARINDEX(' ', T4.nombre))  consultorio
FROM EMERGENCIA T1
LEFT JOIN PACIENTE T2 ON T2.PACIENTE = T1.PACIENTE
LEFT JOIN SEGURO T3 ON T3.SEGURO = T1.SEGURO
LEFT JOIN CONSULTORIO T4 ON T4.CONSULTORIO = T1.CONSULTORIO
WHERE T1.FECHA BETWEEN @date_from AND @p_fecha
AND
CASE
WHEN (ISNULL(T1.CONSULTORIO, '') IS NOT NULL)  AND @p_id_consultorio = 'todos' THEN 'todos'
ELSE T1.CONSULTORIO
END = @p_id_consultorio
AND T1.CONSULTORIO IN ('4050', '4060')
AND T1.NOMBRES LIKE @p_nombres
AND ((T1.ESTADO >= @estado AND @p_id_emergencia_estado = '') OR (T1.ESTADO = @p_id_emergencia_estado AND @p_id_emergencia_estado <> ''))
AND T1.EMERGENCIA_ID NOT IN (SELECT EMERGENCIA_ID FROM EMERGENCIA WHERE ESTADO = '5' AND FECHA= @date_from)
AND
CASE
WHEN @p_mispacientes = 1 AND @abreviatura IN ('MED', 'OBS') THEN T1.QUIEN_ATIENDE
ELSE ''
END = @medico

/* ORDER BY FECHA DESC, HORA DESC */

ORDER BY convert(datetime, FECHA, 103) DESC, HORA DESC 
END


/* ORDER BY SUBSTRING(CONVERT(VARCHAR(10), FECHA, 103), 1,2), SUBSTRING(CONVERT(VARCHAR(10), FECHA, 103), 4,2), SUBSTRING(CONVERT(VARCHAR(10), FECHA, 103), 7,5) DESC, HORA DESC */





GO


