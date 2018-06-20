/* VER USUARIOS CON PERMISO PARA EL SISTEMA DE ARCHIVOS */

USE SIGSALUD
GO

DECLARE @ldfecha datetime = convert(datetime, '2015-10-29', 101)

declare @lcnombre varchar(100) = 'VILLOSLADA'
DECLARE @lcusuario varchar(50) = 'RFLORES'

/* select * from USUARIO where NOMBRE like '%' + @lcnombre + '%' */
select * from USUARIO where USUARIO like '%' + @lcusuario + '%'
SELECT * FROM dbo.USUARIOD WHERE USUARIO = @lcusuario
SELECT * FROM dbo.USUARIOH WHERE USUARIO = @lcusuario  
SELECT * FROM dbo.ARCHIVO_PARAMETRO WHERE USUARIO = @lcusuario 
SELECT * FROM dbo.ARCHIVO_PARAMETRO 

/* SELECT * FROM dbo.ARCHIVO_MOV WHERE FECHA = @ldfecha  AND CONSULTORIO IN (SELECT CONSULTORIO FROM dbo.ARCHIVO_PARAMETRO WHERE USUARIO = @lcusuario) ORDER BY TURNO ASC */


 
