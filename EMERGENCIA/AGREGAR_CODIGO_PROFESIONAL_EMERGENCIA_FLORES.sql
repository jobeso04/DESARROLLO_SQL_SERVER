/* VER EMEGERNCIA Y DETALLE DADO EL ID DE EMERGENCIA */
Declare @lidemergencia varchar(13) = '16035715'
/* UPDATE dbo.EMERGENCIA SET USUARIO_FN_VITALES = 'FGM'  WHERE EMERGENCIA_ID = @lidemergencia 
UPDATE dbo.EMERGENCIA_DET_WEB SET PROFESIONAL = 'FGM'  WHERE EMERGENCIA_ID = @lidemergencia  AND PROFESIONAL = '' */
select USUARIO_FN_VITALES from EMERGENCIA where emergencia_id = @lidemergencia
select * from dbo.EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia  order by FECHA_HORA_REG asc 

