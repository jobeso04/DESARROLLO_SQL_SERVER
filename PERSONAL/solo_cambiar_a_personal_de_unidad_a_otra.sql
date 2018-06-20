USE BDPERSONAL 
DECLARE @lcodigo VARCHAR(13) = '084358'
UPDATE dbo.ServicioMaestro SET IdServDepartUnid = '87', iddepartunid = '5'  WHERE Codigo = @lcodigo
UPDATE ServicioMaestro SET IdServDepartUnid = '87' WHERE Codigo = @lcodigo
UPDATE ASISTENCIA SET IdServDepartUnid = '87' WHERE Codigo = @lcodigo AND MES = 5 AND AÑO = 2016 
SELECT * FROM dbo.ServicioMaestro WHERE Codigo = @lcodigo
SELECT * FROM ASISTENCIA WHERE Codigo = @lcodigo AND MES = 5 AND AÑO = 2016 
