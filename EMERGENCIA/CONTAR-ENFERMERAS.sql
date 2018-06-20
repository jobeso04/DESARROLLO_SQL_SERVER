DECLARE @lidproceweb varchar(12) = '15012802'
Declare @lfechainicio datetime = convert(datetime, '2015-09-01',101) +  CAST('07:30:00' AS DATETIME)
declare @lfechafin datetime = convert(datetime, '2015-09-10',101) + CAST('19:30:00' AS DATETIME)

SELECT * FROM dbo.EMERGENCIA_PROC_WEB WHERE FECHA_HORA_REG BETWEEN @lfechainicio AND @lfechafin  order by PROFESIONAL asc

SELECT * FROM dbo.EMERGENCIA_PROC_WEB WHERE FECHA_HORA_REG BETWEEN @lfechainicio AND @lfechafin  and ID_PROCE_WEB = (SELECT top 1 ID_PROCE_WEB FROM dbo.EMERGENCIA_PROC_WEB WHERE FECHA_HORA_REG BETWEEN @lfechainicio AND @lfechafin order by PROFESIONAL asc)

SELECT * FROM EmergenciaDetalleProcedimiento WHERE  IdEmergenciaDetalleProcedimiento = '15018185'
  
SELECT * FROM ProcedimientoEnfermeria where IdProcedimientoEnfermeria = 59

SELECT * FROM EmergenciaDetalleProcedimiento

   
   
   SELECT * FROM dbo.EMERGENCIA_PROC_WEB WHERE PROFESIONAL = 'QLJ' AND ID_PROCE_WEB = '15001821'
   
   SELECT * FROM dbo.EMERGENCIA_PROC_WEB WHERE PROFESIONAL = 'QLJ' ORDER BY ID_PROCE_WEB ASC
   
   SELECT * FROM dbo.EMERGENCIA_PROC_WEB WHERE ID_PROCE_WEB = '15001821'
   
   select idprocedimientoenfermeria, cantidad from EmergenciaDetalleProcedimiento where IdEmergenciaDetalleProcedimiento = '15001821'
   
   select * from dbo.EMERGENCIA_PROC_WEB where CODIGO_PROC = '00000059'
   
   