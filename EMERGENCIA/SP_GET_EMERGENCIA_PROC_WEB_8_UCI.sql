USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8_UCI]    Script Date: 07/06/2016 14:15:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8_UCI]
@p_fecha VARCHAR(10),
@p_turno VARCHAR(1)
AS BEGIN

SET LANGUAGE Spanish

DECLARE @v_fecha_inicio DATETIME = @p_fecha
DECLARE @v_fecha_fin DATETIME = @v_fecha_inicio + CAST('23:59:59' AS DATETIME)

IF @p_turno = 'D'
BEGIN
	SET @v_fecha_inicio =  @v_fecha_inicio + CAST('07:30:00' AS DATETIME)
	SET @v_fecha_fin = CAST(@p_fecha AS DATETIME) + CAST('19:29:59' AS DATETIME)
END

IF @p_turno = 'G'
BEGIN
	SET @v_fecha_inicio =  @v_fecha_inicio + CAST('19:30:00' AS DATETIME)
	SET @v_fecha_fin = DATEADD(DAY, 1, CAST(@p_fecha AS DATETIME)) + CAST('07:29:59' AS DATETIME)
END

SELECT
Descripcion,
SUM(Cantidad) Cantidad
FROM (
	SELECT 
	T3.Descripcion,
	SUM(T1.Cantidad) Cantidad
	FROM EmergenciaDetalleProcedimiento T1
	INNER JOIN EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T1.IdEmergenciaDetalle
	INNER JOIN ProcedimientoEnfermeria T3 ON T3.IdProcedimientoEnfermeria = T1.IdProcedimientoEnfermeria
	WHERE T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin AND T2.ES_UCI = 'pro_uci'
	GROUP BY T3.Descripcion

	UNION ALL

	SELECT 
	T2.Descripcion,
	COUNT(T1.CODIGO_PROC) Cantidad
	FROM EMERGENCIA_PROC_WEB T1
	INNER JOIN ProcedimientoEnfermeria T2 ON T2.Idh = T1.CODIGO_PROC
	WHERE T1.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin 
	GROUP BY T2.Descripcion) AS TT1
GROUP BY Descripcion

END

GO


