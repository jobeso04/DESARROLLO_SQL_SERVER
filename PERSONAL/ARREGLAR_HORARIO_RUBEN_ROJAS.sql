USE BDPERSONAL
DECLARE @lcodigo VARCHAR(13) = '084113'
/* SELECT * FROM ASISTENCIA WHERE MES = 12 AND A�O = 2016 AND CODIGO = @lcodigo ORDER BY DIA ASC */
UPDATE ASISTENCIA SET CODACT = 'D', HORAI = '00:00:00', HORAS = '00:00:00'  WHERE  MES = 12 AND A�O = 2016 AND CODIGO = @lcodigo

UPDATE ASISTENCIA SET CODACT = 'M3', HORAI = '07:00:00', HORAS = '13:00:00' WHERE DIA = 31 AND MES = 12 AND A�O = 2016 AND CODIGO = @lcodigo

SELECT * FROM ASISTENCIA WHERE MES = 12 AND A�O = 2016 AND CODIGO = @lcodigo ORDER BY DIA ASC 
