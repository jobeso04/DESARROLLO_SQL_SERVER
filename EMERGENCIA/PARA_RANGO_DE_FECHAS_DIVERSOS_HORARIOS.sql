/* lcfecharegistro1 =  ALLTRIM(STR(tHISFORM.spinner4.VALUE)) + '-' + PADL(ALLTRIM(STR(THISFORM.COMBO1.LISTINDEX)),2,"0") + "-" + PADL(ALLTRIM(STR(THISFORM.spinner3.value)),2,"0")
lcfecharegistro2 = ALLTRIM(STR(tHISFORM.spinner5.VALUE)) + '-' +  PADL(ALLTRIM(STR(THISFORM.COMBO3.LISTINDEX)),2,"0") + "-" + PADL(ALLTRIM(STR(THISFORM.spinner2.value)),2,"0")
*/


   declare @lfechainicio datetime = convert(datetime, '2015-09-01',101) +  CAST('07:30:00' AS DATETIME)
   declare @lfechafin datetime = convert(datetime, '2015-09-30',101) + CAST('19:30:00' AS DATETIME)
   SELECT
   substring(upper(Descripcion),1,250) as descripcion,
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

/* noche */
declare @lfechainicio datetime = convert(datetime, ?lcfecharegistro1,101) +  CAST('07:30:00' AS DATETIME)
   declare @lfechafin datetime = convert(datetime, ?lcfecharegistro2,101) + CAST('19:30:00' AS DATETIME)
   SELECT
   substring(upper(Descripcion),1,250) as descripcion,
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
