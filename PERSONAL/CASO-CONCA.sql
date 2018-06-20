USE BDPERSONAL

SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'CONCA%'

SELECT * FROM MAESTRO WHERE CODIGO = '084376'


SELECT * FROM dbo.ServicioMaestro WHERE Codigo = '084620'

SELECT * FROM dbo.ServicioMaestro ORDER BY IdServMAESTRO DESC


INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]([IdServDepartUnid],[IdDepartUnid],[Codigo],[Activo])
  VALUES (117, '14', '084376', 1)
  
  
  SELECT * FROM [BDPERSONAL].[dbo].[ServicioMaestro] WHERE Codigo = '084376'
  
  DELETE FROM [BDPERSONAL].[dbo].[ServicioMaestro] WHERE IdServMaestro = 680








SELECT * FROM ASISTENCIA WHERE CODIGO = '084376' AND 