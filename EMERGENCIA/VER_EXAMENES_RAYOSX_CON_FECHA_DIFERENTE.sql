/* selecionar el paciente para modificar su examen de laboratorio con fecha diferente */
/* tambien elimina examenes de rayos x considerando solo el ID de Emergencia */

use SIGSALUD
declare @lidemergencia varchar(13) = '17013771'
select * from V_orden_examen_web where ID_ATENCION = @lidemergencia
select * from ORDEN_EXAMEN_DET_WEB where ID_orden_examen in (select ID_ORDEN_EXAMEN from orden_examen_web where ID_ATENCION = @lidemergencia) 


/* delete from ORDEN_EXAMEN_DET_WEB where ID_orden_examen in (select ID_ORDEN_EXAMEN from orden_examen_web where ID_ATENCION = @lidemergencia) 
delete from orden_examen_web where ID_ATENCION = @lidemergencia */

