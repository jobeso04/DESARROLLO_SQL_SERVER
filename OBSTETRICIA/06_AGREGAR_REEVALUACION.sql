use SIGSALUD
ALTER TABLE emergencia_lugar_web ADD TIPO_SERVICIO VARCHAR(1)
INSERT INTO [SIGSALUD].[dbo].[EMERGENCIA_LUGAR_WEB]([LUGAR],[DESCRIPCION],[ESTADO],[TIPO_SERVICIO])
  VALUES ('REE', 'REEVALUACION', 1, 'O')
UPDATE emergencia_lugar_web SET tipo_servicio = 'O' where LUGAR = 'OBS'





select LUGAR, DESCRIPCION from emergencia_lugar_web where estado=1 and TIPO_SERVICIO = 'O'

SELECT * FROM USUARIO WHERE NOMBRE LIKE '%BLANCA%'