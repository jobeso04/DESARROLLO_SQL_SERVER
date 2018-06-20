/* AGREGAR FIRNMAS DEL DOCTOR GASPAR Y GLADYS A ANESTESIOLOGIA */

INSERT INTO [BDPERSONAL].[dbo].[FIRMA_ROL]([id_firma],[dni],[unidad],[estado])
  VALUES (100, '09185622', '114', '1')
INSERT INTO [BDPERSONAL].[dbo].[FIRMA_ROL]([id_firma],[dni],[unidad],[estado])
  VALUES (101, '07653772', '114', '1')
  
  
INSERT INTO [BDPERSONAL].[dbo].[FIRMA_ROL]([id_firma],[dni],[unidad],[estado])
  VALUES (99, '10500450', '115', '1')
  
  
USE BDPERSONAL
SELECT * FROM dbo.FIRMA_ROL ORDER BY id_firma DESC

SELECT * FROM dbo.ServicioDepartUnidad


SELECT DNI, * FROM MAESTRO WHERE NOMBRE LIKE 'GASPAR%'



SELECT * FROM dbo.FIRMA_ROL WHERE unidad = '48'
SELECT * FROM dbo.FIRMA_ROL WHERE unidad = '114'

UPDATE FIRMA_ROL SET estado = '2' WHERE id_firma = '100'
UPDATE FIRMA_ROL SET estado = '1' WHERE id_firma = '101'

