/* cambiar nombres en emergencia */

use sigsalud
DECLARE @lidemergencia VARCHAR(20) = '17006637'
DECLARE @lhistoria VARCHAR(20) = '0227985'
/* 
select * from emergencia where EMERGENCIA_ID = @lidemergencia
select * from PACIENTE where HISTORIA = @lhistoria
*/

UPDATE EMERGENCIA 
SET PATERNO = (SELECT PATERNO FROM PACIENTE WHERE HISTORIA = @lhistoria),
MATERNO = (SELECT MATERNO FROM PACIENTE WHERE HISTORIA = @lhistoria),
NOMBRE = (SELECT NOMBRE FROM PACIENTE WHERE HISTORIA = @lhistoria),
NOMBRES = (SELECT NOMBRES FROM PACIENTE WHERE HISTORIA = @lhistoria),
PACIENTE = (SELECT PACIENTE FROM PACIENTE WHERE HISTORIA = @lhistoria),
FECHA_NACIMIENTO  = (SELECT FECHA_NACIMIENTO FROM PACIENTE WHERE HISTORIA = @lhistoria),
EDAD = (SELECT dbo.FN_CALCULAR_EDAD(CONVERT(VARCHAR(10), FECHA_NACIMIENTO, 103)) FECHA_NACIMIENTO FROM PACIENTE WHERE HISTORIA = @lhistoria),
SEXO = (SELECT SEXO FROM PACIENTE WHERE HISTORIA = @lhistoria),
ESTADO_CIVIL  = (SELECT ESTADO_CIVIL FROM PACIENTE WHERE HISTORIA = @lhistoria),
DIRECCION = (SELECT DIRECCION FROM PACIENTE WHERE HISTORIA = @lhistoria),
DISTRITO = (SELECT DISTRITO FROM PACIENTE WHERE HISTORIA = @lhistoria),
TELEFONO1 = (SELECT TELEFONO1 FROM PACIENTE WHERE HISTORIA = @lhistoria),
TIPO_DOCUMENTO = (SELECT TIPO_DOCUMENTO FROM PACIENTE WHERE HISTORIA = @lhistoria),
DOCUMENTO = (SELECT DOCUMENTO FROM PACIENTE WHERE HISTORIA = @lhistoria)
where EMERGENCIA_ID = @lidemergencia

