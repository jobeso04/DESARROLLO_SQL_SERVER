/* VER EMEGERNCIA Y DETALLE DADO EL ID DE EMERGENCIA */
Declare @lidemergencia varchar(13) = '16030149'
select * from EMERGENCIA where emergencia_id = @lidemergencia
select * from dbo.EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia  order by FECHA_HORA_REG asc 
/* el mensaje : Debe de seleccionar primero a un paciente y luego hacer click en el boton utilizar historia de emergencia. */
/* select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id  = @lidemergencia */
/* use el scrip : medico selecciona historia y no aparece */


/* para limpiar la hoja de emergencia y regresarlo a estado 2 aqui es la solucion */
/*update EMERGENCIA set ESTADO = '2', SINTOMAS = '', MEDICO = '0', temperatura = '', PRESION = '', TRATAMIENTO = '', MEDICO1 = '0', CIEX4 = '0', PRIORIDAD = '', CIEX5 = '0', FC = '', SAT_OX = '', EXAMEN_FISICO = '', 
RELATO = '', FECHA_ATENCION = '', hora_aten = '', TIPO_CIEX4 = '', TIPO_CIEX5 = '',  PRESIOND = '', ESTADO_PACIENTE = '', QUIEN_ATIENDE = '', FR = '' WHERE EMERGENCIA_ID = @lidemergencia 
 delete from dbo.EMERGENCIA_DET_WEB where EMERGENCIA_ID = @lidemergencia */
 /***************************************************/ 
 
 /* update dbo.EMERGENCIA_DET_WEB set DETALLE = '24.00 ESTABLE SIN CAMBIOS CLINICOS  02.00 FAMILIARES REFIEREN QUE NO HAN ENCONTRADO UN MEDICAMENTO SOLICITADO POR LA DRA FLORES  SE COMUNICA A LA DRA QUIEN REFIERE QUE ES NECESARIO  EL TIPO DE OPERACION ES UNA URGENCIA  NO ES EMERGENCIA  02.30 DUERME EV VIABLE'
  where ID_EME_DET_WEB = '16063656' */
  
  
