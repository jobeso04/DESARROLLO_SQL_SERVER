/* LOS SIGUIENTE SSON LOS QUERYS PARA LAS ELIMINACIONES */



/* ELIMINAR EL REGISTRO DE LAS FUNCIONES VITALES - EMERGENCIA - MEDICINA */
UPDATE EMERGENCIA SET TEMPERATURA=0.0,PRESION=0.0,PRESIOND=0.0,PULSO=0.0,FR=0.0,PESO=0.0,FC=0.0,SAT_OX=0.0,USUARIO_FN_VITALES='',QUIEN_ATIENDE='' ,ESTADO='2'
   WHERE EMERGENCIA_ID='16059588'
DELETE FROM  EMERGENCIA_DET_WEB  WHERE EMERGENCIA_ID='16059588'
/*** CONSIDERAR ESTE SQUERY EN EL PROGRAMA - EMERGNEICA MEDICINA */





/* los campos que graban son los siguientes  */ /* medicina general */
select EMERGENCIA_ID, ESTADO, TIPO_CIEX1, ciex1, tipo_ciex2, ciex2, TIPO_CIEX3, ciex3, TIPO_CIEX4, ciex4, TIPO_CIEX5, ciex5, TIPO_CIEX6, ciex6, DESTINO, observacion2, MEDICO, temperatura, ESTADO, tratamiento, cuentaid, medico1,
  fecha_sal, hora_sal, PRIORIDAD, medico2, fc, sat_ox, usuario_fn_vitales, examen_fisico, relato, fecha_atencion, usuario_alta_enf, fecha_hora_alta_enf, presiond, ESTADO_PACIENTE, quien_atiende, fecha_salida, observacion_egreso,
  PROCE_MED_1, PROCE_MED_2, PROCE_MED_3   from EMERGENCIA WHERE EMERGENCIA_ID = '16048834'
  
  


  
  
  
  
  