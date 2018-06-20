use SIGSALUD
go

select * from dbo.EMERGENCIA_PROC_WEB order by ID_PROCE_WEB desc

select * from dbo.EmergenciaDetalleProcedimiento  order by IdEmergenciaDetalleProcedimiento desc


/* delete from dbo.EMERGENCIA_PROC_WEB  where ID_PROCE_WEB = '15019685' */
/* delete from dbo.EmergenciaDetalleProcedimiento where IdEmergenciaDetalle = '15019685' */
 