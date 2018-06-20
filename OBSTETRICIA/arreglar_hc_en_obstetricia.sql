use SIGSALUD
declare @lidemergencia varchar(13) = '16030496'
select  fecha, CONSULTORIO, MEDICO, MEDICO1, MEDICO2, QUIEN_ATIENDE, nombres, usuario_fn_vitales, USUARIO_ANT_OBSTETRICIA, USUARIO_EXAMEN_OBSTETRICO, MEDICO_CODIGO_GINE 
 from EMERGENCIA where EMERGENCIA_ID = @lidemergencia and CONSULTORIO in ('4050', '4060')
select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id= @lidemergencia  

 /* para obstetra que registro atencion :  usuario_fn_vitales */
 update emergencia set usuario_fn_vitales = MEDICO_CODIGO_GINE  where EMERGENCIA_ID =  @lidemergencia  
  
 /* MEDICO DE ENTRADA - ginecologo en medico1 - MEDICO1, SALE EN EL SISTEMA EL QUE REGISTRA LA ATENCION */
  update emergencia set medico1 = MEDICO_CODIGO_GINE  where EMERGENCIA_ID =  @lidemergencia  
 
 /* MEDICO DE SALIDA - PARA EL DESTINO DEL PACIENTE ES LA COLUMNA MEDICO */
 update emergencia set MEDICO2 = MEDICO_CODIGO_GINE  where EMERGENCIA_ID =  @lidemergencia  
 
select * from EMERGENCIA 
select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id= '16030496'


 
 
 
/*  UPDATE MEDICO SET DNI = '16169791' WHERE MEDICO = 'MCS' */
/* UPDATE MEDICO SET DNI = '09628304' WHERE MEDICO = 'MHJ' */
 