USE BDPERSONAL
DECLARE @lcodigo varchar(10) = '084169'
SELECT CODIGO, NOMBRE, CODCARGO, CODNIVEL, CODHORA, CODFUNCION, NIVELGRD, CADENA, HORAS, HABER FROM MAESTRO WHERE CODIGO = @lcodigo
/* SOLUCION */
/* UPDATE  MAESTRO  SET   CODCARGO = '0000', CODNIVEL = '0', CODHORA = 'R', CODFUNCION = '0000', NIVELGRD = 0,
                       CADENA = 'NO DEFINIDO', HORAS = 8, HABER = 0.000  WHERE CODIGO = @lcodigo */
SELECT CODIGO, NOMBRE, CODCARGO, CODNIVEL, CODHORA, CODFUNCION, NIVELGRD, CADENA, HORAS, HABER FROM MAESTRO WHERE CODIGO = @lcodigo