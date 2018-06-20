use SIGSALUD
declare @lidemergencia varchar(13) = '16032011'
select  estado, fecha, CONSULTORIO, MEDICO, MEDICO1, MEDICO2, QUIEN_ATIENDE, nombres, usuario_fn_vitales, USUARIO_ANT_OBSTETRICIA, USUARIO_EXAMEN_OBSTETRICO, MEDICO_CODIGO_GINE, TEMPERATURA, PRESION, PULSO, PESO, TALLA, GPOBS, FUROBS, FPPOBS, EGUMOBS, EGECOOBS, USUARIO_ANT_OBSTETRICIA,
ALTURA_UTERINA, PRESENTACION, LCF, DILATACION, INCORPORACION, ALTURA_PRESENTACION, MEMBRANAS, USUARIO_EXAMEN_OBSTETRICO, PRESENTACION2, LCF2, TV, MEDICO_CODIGO_GINE, HORAINICIOATENCION, PESO, TALLA 
 from EMERGENCIA where EMERGENCIA_ID = @lidemergencia and CONSULTORIO in ('4050', '4060')
 SELECT * FROM V_EMERGENCIA_DET_WEB WHERE emergencia_id= @lidemergencia  
 select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id= @lidemergencia  


/* Correcto : CBM */
 
EXEC SP_GET_EMERGENCIA_15 @lidemergencia

/* delete from EMERGENCIA_DET_WEB  where  id_eme_det_web = '16060253' */

 /* para obstetra que registro atencion :  usuario_fn_vitales */
/* update emergencia set usuario_fn_vitales = USUARIO_ANT_OBSTETRICIA  where EMERGENCIA_ID =  @lidemergencia  */

 /* MEDICO DE ENTRADA - ginecologo en medico1 - MEDICO1, SALE EN EL SISTEMA EL QUE REGISTRA LA ATENCION */
   /* update emergencia set medico1 = MEDICO_CODIGO_GINE  where EMERGENCIA_ID =  @lidemergencia   */
  
 /* MEDICO DE SALIDA - PARA EL DESTINO DEL PACIENTE ES LA COLUMNA MEDICO */
  /* update emergencia set MEDICO = MEDICO_CODIGO_GINE  where EMERGENCIA_ID =  @lidemergencia  */
/*****************************************************************************************************/
 
/* debe grabar en fucniones vitales */
