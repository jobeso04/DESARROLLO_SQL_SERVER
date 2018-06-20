/* Medico Selecciona un Paciente y aparace un mensaje , no se seleciono paciente */

use SIGSALUD
declare @lidemergencia varchar(13) = '16029968'
select  MEDICO, MEDICO1, MEDICO2, QUIEN_ATIENDE, usuario_fn_vitales, USUARIO_ANT_OBSTETRICIA, USUARIO_EXAMEN_OBSTETRICO, MEDICO_CODIGO_GINE  from EMERGENCIA where EMERGENCIA_ID = @lidemergencia 
update emergencia set medico1 = MEDICO where EMERGENCIA_ID =  @lidemergencia

/* SOLUCION AL PROBLEMA DE OBSTETRICIA */
/*
update emergencia set medico = MEDICO1 where EMERGENCIA_ID =  '16029526'
update emergencia set medico1 = MEDICO where EMERGENCIA_ID =  '16029569'
update emergencia set medico = 'MCS', MEDICO1 = 'MCS', QUIEN_ATIENDE = 'MCS'  where EMERGENCIA_ID =  '16029568'
*/



/*select CIEX4, CIEX5, CIEX6, * from EMERGENCIA where EMERGENCIA_ID = @lidemergencia
update EMERGENCIA set CIEX4 ='0' where EMERGENCIA_ID =  @lidemergencia
select CIEX4, CIEX5, CIEX6, * from EMERGENCIA where EMERGENCIA_ID = @lidemergencia */
/* select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id = @lidemergencia */
                      

/* primera condicion */
select * from MEDICO where MEDICO = (select usuario_fn_vitales from EMERGENCIA where EMERGENCIA_ID = @lidemergencia)
select * from usuario_web where dni = (select dni from medico where medico = (select usuario_fn_vitales from EMERGENCIA where EMERGENCIA_ID = @lidemergencia))
select * from SEGURO where SEGURO = (select SEGURO from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex1 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from consultorio where consultorio = (select consultorio from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from motivo_emergencia where MOTIVO_EMERGENCIA  = (select MOTIVO_EMERGENCIA from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from medico where medico = (select MEDICO from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from estado_civil where estado_civil = (select estado_civil from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from sexo where SEXO = (select sexo from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from localidad where localidad = (select localidad from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from paciente where paciente = (select paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex2 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex3 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex4 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex5 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from CIEX where ciex = (select ciex6 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from destino where destino = (select destino from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from medico where medico  = (select MEDICO1 from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from medico where medico  = (select usuario_alta_enf from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from emergencia_lugar_web where lugar = (select estado_paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from religion where religion = (select religion from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia)
select * from ocupacion where ocupacion = (select OCUPACION  from paciente where paciente = (select paciente from EMERGENCIA  where EMERGENCIA_ID = @lidemergencia))








