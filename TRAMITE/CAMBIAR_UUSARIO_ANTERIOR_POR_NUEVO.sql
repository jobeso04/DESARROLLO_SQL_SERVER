/* REEMPLAZAR USUARIO ANTIGUO POR NUEVO */
USE TRAMITE
DECLARE @lusuario_anterior varchar(15) = 'SPORRAS'
DECLARE @lusuario_nuevo varchar(15) = 'AVIVAS'

/* SELECT * FROM USUARIO WHERE USUARIO = @lusuario_anterior
SELECT * FROM USUARIOD WHERE USUARIO =@lusuario_anterior  */

 /* Update USUARIO set USUARIO = @lusuario_nuevo, NOMBRE = 'VIVAS MEDRANO ALDO PAUL', CARGO = 'SECRETARIA'  WHERE USUARIO = @lusuario_anterior 

update USUARIOD set USUARIO = @lusuario_nuevo  WHERE USUARIO = @lusuario_anterior   */


 SELECT * FROM USUARIO WHERE USUARIO = @lusuario_nuevo
SELECT * FROM USUARIOD WHERE USUARIO =@lusuario_nuevo  
