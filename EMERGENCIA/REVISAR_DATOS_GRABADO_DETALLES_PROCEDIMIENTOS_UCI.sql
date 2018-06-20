/* REVISAR SI ESTAN GRABANDO LOS REGISTROS DE EL PROCEDIMIENTO DE DETALLES DE ENFERMERIA */
SELECT * FROM dbo.EmergenciaDetalleProcedimiento ORDER BY IdEmergenciaDetalleProcedimiento DESC





EXEC dbo.SP_GET_EMERGENCIA_PROC_WEB_8 '27/01/2017', '27/01/2017', '', '1'

DECLARE @p_fecha VARCHAR(10) = '27/01/2017'
DECLARE @p_fecha2 VARCHAR(10) = '27/01/2017'
DECLARE @p_turno VARCHAR(1) = ''
DECLARE @p_tipo_reporte VARCHAR(1)= '1'

/* DECLARE @v_fecha_inicio DATETIME = convert(datetime, @p_fecha, 103) */
DECLARE @v_fecha_inicio DATETIME = @p_fecha
DECLARE @v_fecha_fin DATETIME = @p_fecha2 + CAST('23:59:59' AS DATETIME)
select EMERGENCIA_ID   from EMERGENCIA_DET_WEB  where FECHA_HORA_REG between @v_fecha_inicio and @v_fecha_fin  order by EMERGENCIA_ID desc

select t1.idemergenciadetalle, t2.Descripcion, t1.Cantidad from EmergenciaDetalleProcedimiento t1 inner join
procedimientoenfermeria t2 on t2.idprocedimientoenfermeria = t1.IdProcedimientoEnfermeria
where t1.agregar_uci =  '1' and t1.idemergenciadetalle in 
(select EMERGENCIA_ID from EMERGENCIA_DET_WEB  where FECHA_HORA_REG between @v_fecha_inicio and @v_fecha_fin)




17009007
17009008
17009008
17009009


select t2.Descripcion, count(t1.Cantidad) Cantidad from EmergenciaDetalleProcedimiento t1 inner join
procedimientoenfermeria t2 on t2.idprocedimientoenfermeria = t1.IdProcedimientoEnfermeria
where t1.agregar_uci =  '1' and t1.idemergenciadetalle in 
(select ID_EME_DET_WEB from EMERGENCIA_DET_WEB  where FECHA_HORA_REG between @v_fecha_inicio and @v_fecha_fin)
group by t2.Descripcion order by t2.Descripcion asc




SELECT * FROM dbo.EmergenciaDetalleProcedimiento ORDER BY IdEmergenciaDetalleProcedimiento DESC

SELECT * FROM dbo.EmergenciaDetalleProcedimiento where agregar_uci =  '1'



SELECT T4.Descripcion,
     			SUM(T3.Cantidad) Cantidad
     				FROM EmergenciaDetalleProcedimiento T3
     					INNER JOIN EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T3.IdEmergenciaDetalle
     					
     						INNER JOIN ProcedimientoEnfermeria T4 ON T4.IdProcedimientoEnfermeria = T3.IdProcedimientoEnfermeria
     							WHERE T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin and t3.agregar_uci <> '1'
     								GROUP BY T4.Descripcion
     	
      	SELECT 
     		T4.Descripcion,
     			SUM(T3.Cantidad) Cantidad
     				FROM EmergenciaDetalleProcedimiento T3
     					INNER JOIN EMERGENCIA_DET_WEB T2 ON T2.ID_EME_DET_WEB = T3.IdEmergenciaDetalle
     						INNER JOIN ProcedimientoEnfermeria T4 ON T4.IdProcedimientoEnfermeria = T3.IdProcedimientoEnfermeria
     							WHERE T2.FECHA_HORA_REG BETWEEN @v_fecha_inicio AND @v_fecha_fin and t3.agregar_uci <> '1'
     								GROUP BY T4.Descripcion
     								
     								
SELECT * FROM EMERGENCIA_DET_WEB 
where  FECHA_HORA_REG between convert(datetime, '01/02/2017', 103) and  convert(datetime, '01/02/2017', 103) + CAST('23:59:59' AS DATETIME)
and agregar_uci = '1'  order by fecha_hora_reg desc


select convert(datetime, '01/02/2017', 103)


select FECHA_HORA_REG from EMERGENCIA_DET_WEB 

order by FECHA_HORA_REG desc




SELECT * FROM ProcedimientoEnfermeria


select * from dbo.EMERGENCIA_PROC_WEB			