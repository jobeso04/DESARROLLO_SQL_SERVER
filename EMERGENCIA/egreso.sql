/* VER EMEGERNCIA Y DETALLE DADO EL ID DE EMERGENCIA */
Declare @lidemergencia varchar(13) = '16032205'
select * from EMERGENCIA where emergencia_id = @lidemergencia
select * from dbo.EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia  order by FECHA_HORA_REG asc 


select * from 