/* VER FUNCIONES VITALES EN EMERGENCIA Y DET_WEB */
use SIGSALUD
DECLARE @LIDEMERGENCIA VARCHAR(13) = '16007522' /* '16007533' */  /* 16007534 */

select emergencia_id, FECHA,HORA,  NOMBRES, HORA_ATEN, TEMPERATURA, PRESION, PRESIOND, PULSO, FR, PESO, FC, SAT_OX, USUARIO_FN_VITALES, QUIEN_ATIENDE, estado from emergencia where EMERGENCIA_ID = @LIDEMERGENCIA
select  *  from EMERGENCIA_DET_WEB  where EMERGENCIA_ID = @LIDEMERGENCIA and TIPO_PROCESO = 'P06'


/* ELMINAR Y REGRESARLO A ESTADO 2 */
/* UPDATE emergencia  SET TEMPERATURA = '', PRESION = '', PRESIOND = '', PULSO = '', FR = '', PESO = '', FC = '', SAT_OX = '', USUARIO_FN_VITALES = '', QUIEN_ATIENDE = '',
  ESTADO = '2' where EMERGENCIA_ID = @LIDEMERGENCIA
DELETE FROM  EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = @LIDEMERGENCIA  */

/* UPDATE EMERGENCIA_DET_WEB SET PROFESIONAL = 'CNH' WHERE EMERGENCIA_ID = @LIDEMERGENCIA  */


/* SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = '16007580' */


 SELECT * FROM EMERGENCIA_DET_WEB WHERE profesional = '' and fecha = '2016-02-18'  ORDER BY FECHA DESC
 
 SELECT * FROM EMERGENCIA_DET_WEB WHERE profesional = 'CSE'  and fecha = '2016-02-18'   ORDER BY FECHA DESC
 
/*  Update EMERGENCIA_DET_WEB set profesional = 'CSE'  WHERE profesional = '' and fecha = '2016-02-18'  */
  
  44561085
 
 