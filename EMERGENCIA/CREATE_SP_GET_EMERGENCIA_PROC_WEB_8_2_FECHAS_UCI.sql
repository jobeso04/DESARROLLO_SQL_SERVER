USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8_2_FECHAS_UCI]    Script Date: 02/02/2017 15:57:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8_2_FECHAS_UCI]
@p_fecha VARCHAR(10),
@p_fecha2 VARCHAR(10),
@p_turno VARCHAR(1)
AS BEGIN

SET LANGUAGE Spanish

DECLARE @v_fecha_inicio DATETIME = @p_fecha
DECLARE @v_fecha_fin DATETIME = @p_fecha2 + CAST('23:59:59' AS DATETIME)

	SELECT 
	T3.Descripcion,
	SUM(T1.Cantidad) Cantidad
	FROM EmergenciaDetalleProcedimiento T1
	INNER JOIN EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T1.IdEmergenciaDetalle
	INNER JOIN ProcedimientoEnfermeria T3 ON T3.IdProcedimientoEnfermeria = T1.IdProcedimientoEnfermeria
	WHERE T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin and ltrim(rtrim(t2.AGREGAR_UCI)) = 1 
	GROUP BY T3.Descripcion

	
END






GO


