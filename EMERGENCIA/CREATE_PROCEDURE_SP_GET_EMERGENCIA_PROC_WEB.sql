USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8]    Script Date: 01/19/2017 08:57:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GET_EMERGENCIA_PROC_WEB_8]
@p_fecha VARCHAR(10),
@p_fecha2 VARCHAR(10),
@p_turno VARCHAR(1),
@p_tipo_reporte VARCHAR(1)

AS BEGIN
 SET LANGUAGE Spanish

DECLARE @v_fecha_inicio DATETIME = @p_fecha
DECLARE @v_fecha_fin DATETIME = @p_fecha2 + CAST('23:59:59' AS DATETIME)

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



IF @p_tipo_reporte  = '2'
BEGIN
   	DECLARE @v_fecha_inicio_2 DATETIME = @p_fecha
   	DECLARE @v_fecha_fin_2 DATETIME = @p_fecha2 + CAST('23:59:59' AS DATETIME)
   	   	
   	IF @p_turno = 'D'
   	  BEGIN
   	  	SET @v_fecha_inicio_2 =  @v_fecha_inicio_2 + CAST('07:30:00' AS DATETIME)
   	  	SET @v_fecha_fin_2 = CAST(@p_fecha AS DATETIME) + CAST('19:29:59' AS DATETIME)
   	 END
   	 
   	IF @p_turno = 'G'
   	    BEGIN
   	      SET @v_fecha_inicio_2 =  @v_fecha_inicio_2 + CAST('19:30:00' AS DATETIME)
   	      SET @v_fecha_fin_2 = DATEADD(DAY, 1, CAST(@p_fecha AS DATETIME)) + CAST('07:29:59' AS DATETIME)
   	END
   select T3.Descripcion, SUM(CANTIDAD) CANTIDAD  from 	EmergenciaDetalleProcedimiento t1 
    inner join  EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T1.IdEmergenciaDetalle
     inner join ProcedimientoEnfermeria T3 ON T3.IdProcedimientoEnfermeria = T1.IdProcedimientoEnfermeria
      where t1.agregar_uci = '1' AND T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio_2 AND @v_fecha_fin_2  GROUP BY T3.Descripcion

END

IF @p_tipo_reporte  <> '2'
BEGIN
	 

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
	WHERE T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin 
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
 
END

GO


