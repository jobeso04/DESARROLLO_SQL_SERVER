/* exec SP_GET_EMERGENCIA_PROC_WEB_8 '2015-08-05', 'D' */
/* exec SP_GET_EMERGENCIA_PROC_WEB_8 '2015-08-05', 'G' */

use sigsalud
go

declare @lfechainicio datetime = convert(datetime, '2015-08-08',101) +  CAST('07:30:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2015-08-09',101) + CAST('19:30:00' AS DATETIME)

SELECT
upper(Descripcion) as descripcion,
SUM(Cantidad) Cantidad
FROM (
	SELECT 
	T3.Descripcion,
	SUM(T1.Cantidad) Cantidad
	FROM EmergenciaDetalleProcedimiento T1
	INNER JOIN EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T1.IdEmergenciaDetalle
	INNER JOIN ProcedimientoEnfermeria T3 ON T3.IdProcedimientoEnfermeria = T1.IdProcedimientoEnfermeria
	WHERE T2.FECHA_HORA_REG BETWEEN @lfechainicio AND @lfechafin 
	GROUP BY T3.Descripcion
	UNION ALL
	SELECT 
	T2.Descripcion,
	COUNT(T1.CODIGO_PROC) Cantidad
	FROM EMERGENCIA_PROC_WEB T1
	INNER JOIN ProcedimientoEnfermeria T2 ON T2.Idh = T1.CODIGO_PROC
	WHERE T1.FECHA_HORA_REG BETWEEN @lfechainicio AND @lfechafin 
	GROUP BY T2.Descripcion) AS TT1
GROUP BY Descripcion  order by Descripcion asc
 