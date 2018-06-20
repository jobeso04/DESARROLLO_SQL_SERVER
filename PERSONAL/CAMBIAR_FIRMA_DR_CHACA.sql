

USE BDPERSONAL
 SELECT  DNI, UNIDAD FROM  FIRMA_ROL  where ESTADO = '1' AND UNIDAD = '89'
 
 SELECT * FROM  FIRMA_ROL  where ESTADO = '1' AND UNIDAD = '89'
 
 
 USE BDPERSONAL
 SELECT * FROM  FIRMA_ROL  where  UNIDAD = '89'
 UPDATE FIRMA_ROL SET dni = '10500450'  where  UNIDAD = '89'
 
 
 select * from MAESTRO where DNI = '10500450'
 
 USE SIGSALUD
 SELECT * FROM USUARIO_WEB WHERE DNI = '07654759'
 
 
 SELECT * FROM  FIRMA_ROL where dni = '21528993'
 
 update firma_rol set dni = '07655531' where dni = '21528993'
 
 select * from dbo.ServicioDepartUnidad