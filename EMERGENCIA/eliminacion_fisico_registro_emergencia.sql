/* eliminacion en fisico del registro de emergencia */


DECLARE @lid_emergencia VARCHAR(13) = '18000831'
delete from [SIGSALUD].[dbo].[EMERGENCIA]  where EMERGENCIA_ID =  @lid_emergencia
delete from [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] where IdEmergenciaDetalle =  @lid_emergencia
delete from [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION =  @lid_emergencia
delete from [SIGSALUD].[dbo].[ORDEN_EXAMEN_DET_WEB] where ID_orden_examen in (select ID_ORDEN_EXAMEN from [SIGSALUD].[dbo].[ORDEN_EXAMEN_WEB] where ID_ATENCION = @lid_emergencia) 
    
    