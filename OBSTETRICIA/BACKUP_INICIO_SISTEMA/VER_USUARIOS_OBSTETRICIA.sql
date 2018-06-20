/* ACCESAR AL MODULO DE EMERGENCIA - OBSTETRICIA */


declare @lcdni varchar(8) = '41595637'
USE SIGSALUD

/* select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION, ESTADO, SEXO, SESION, foto
   from USUARIO_WEB  where CARGO in ('OBSTETRA') order by nombres asc */
/*   
select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION, ESTADO, SEXO, SESION, foto
   from USUARIO_WEB  where   DNI = @lcdni */
   
/* select * from medico where ABREVIATURA = 'OBS' ORDER BY NOMBRE ASC */

SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni
SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni
SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni
SELECT * FROM ACCESO_BOTONES WHERE DNI = @lcdni



/* EXEC SP_BOTONES_USUARIO_WEB_OBS

registrar-funsiones-vitales

registrar-antecedente-obstetricia */

