USE BDPERSONAL
DECLARE @LCODIGO VARCHAR(10) = '084638'
DECLARE @LCODIGOC VARCHAR(10) = '084607'
 /* CORRECTO */

SELECT * FROM MAESTRO WHERE codigo = @lcodigo
/* SELECT * FROM ASISTENCIA WHERE CODIGO = @lcodigo AND MES = 2 AND A�o = 2016 */
SELECT * FROM ASISTENCIA WHERE CODIGO = @LCODIGO AND MES = 2 AND A�o = 2016
 /* update ASISTENCIA set IdServDepartUnid = 99 where CODIGO = @lcodigo AND MES = 2 AND A�o = 2016  */
 


 