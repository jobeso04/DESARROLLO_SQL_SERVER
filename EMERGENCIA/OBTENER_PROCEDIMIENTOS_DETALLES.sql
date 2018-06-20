use SIGSALUD
go

/* POR EMERGENCIA ID */
declare @lnombres varchar(200) = 'CHUQUIRAQUI ROXANA'
declare @lemergencia_id varchar(100) = '15035383'

select * from EMERGENCIA where NOMBRES LIKE '%' + @lnombres + '%' ORDER BY FECHA DESC
select * from EMERGENCIA where EMERGENCIA_ID = @lemergencia_id
select * from dbo.EMERGENCIA_DET_WEB where ID_EME_DET_WEB = (select EMERGENCIA_ID from EMERGENCIA where EMERGENCIA_ID = @lemergencia_id)
select * from EmergenciaDetalleProcedimiento  where IdEmergenciaDetalle = (select EMERGENCIA_ID from EMERGENCIA where EMERGENCIA_ID = @lemergencia_id)
select * from dbo.EMERGENCIA_PROCE_ENF where CODIGO in (select IdProcedimientoEnfermeria from EmergenciaDetalleProcedimiento  where IdEmergenciaDetalle = (select EMERGENCIA_ID from EMERGENCIA where EMERGENCIA_ID = @lemergencia_id))

