/* selecionar el paciente para modificar su examen de laboratorio con fecha diferente */
use SIGSALUD
declare @lidemergencia varchar(13) = '15044112'
select * from orden_examen_web where ID_ATENCION = @lidemergencia
select * from ORDEN_EXAMEN_DET_WEB where ID_orden_examen = (select ID_ORDEN_EXAMEN from orden_examen_web where ID_ATENCION = @lidemergencia) 

  
  