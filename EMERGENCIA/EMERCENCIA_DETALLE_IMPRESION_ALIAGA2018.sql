/* VER EMEGERNCIA Y DETALLE DADO EL ID DE EMERGENCIA */
Declare @lidemergencia varchar(13) = '16028958'

SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = @lidemergencia
select * from EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia order by FECHA_HORA_REG asc 

/* para impresion hosja d eemergencia */

EXEC SP_GET_EMERGENCIA_15 '16022571'
