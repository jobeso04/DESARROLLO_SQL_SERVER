/* Duplicar las tablas para pruebas */
use BDPERSONAL
select * into ASISTENCIA2 from asistencia 

select * into CITA_BACKUP from CITA
select * into ROLADCTIVIDADC_BACKUP  from dbo.ROLACTIVIDADC

select * into ROLADCTIVIDAD_BACKUP  from dbo.ROLACTIVIDAD


dbo.ROLACTIVIDADC

select * into ASISTENCIA3 from asistencia 
select * into ASISTENCIA4 from asistencia 



select * into ITEM_01 from ITEM
select * into ITEM_02 from ITEM
select * into ITEM_03 from ITEM



use SIGSALUD

SELECT * INTO [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB_BACKUP] FROM dbo.EMERGENCIA_DET_WEB
select * into [SIGSALUD].[dbo].[CITA_BACKUP] from [SIGSALUD].[dbo].[CITA]

drop table [SIGSALUD].[dbo].[CITA]

select * into [SIGSALUD].[dbo].[CITA_BACKUP2] from [SIGSALUD].[dbo].[CITA_BACKUP]



select * from dbo.EMERGENCIA_DET_WEB


select * into EMERGENCIA_DET_WEB_backup from dbo.EMERGENCIA_DET_WEB