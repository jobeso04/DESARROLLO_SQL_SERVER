select * FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] where EMERGENCIA_ID = '16038395' and TIPO_PROCESO = 'p02'


select * from dbo.ORDEN_EXAMEN_WEB where ID_ATENCION= '16038395'
select * from dbo.ORDEN_EXAMEN_DET_WEB where ID_ORDEN_EXAMEN in ('16006240', '16006241')

update dbo.ORDEN_EXAMEN_DET_WEB set nombre_examen = 'RX/ TOBILLO (1placa) UNILATERAL, RX Pie Izquierdo' where ID_ORDEN_EXAMEN in ('16006240')
update dbo.ORDEN_EXAMEN_DET_WEB set nombre_examen = 'RX/ HOMBRO Izquierdo (2placas) ' where ID_ORDEN_EXAMEN in ('16006241')
