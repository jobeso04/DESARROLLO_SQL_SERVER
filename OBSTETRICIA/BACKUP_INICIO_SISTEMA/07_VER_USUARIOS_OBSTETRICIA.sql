/* ACCESAR AL MODULO DE EMERGENCIA - OBSTETRICIA */

declare @lcdni varchar(8) = '41595637'
USE SIGSALUD
/* SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni
SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni
SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni */
SELECT * FROM ACCESO_BOTONES WHERE DNI = @lcdni

/* select * from MEDICO where NOMBRE like 'cha%' 
select MEDICO,NOMBRE,DNI  from MEDICO where ACTIVO=1 AND abreviatura IN ('OBS', 'MED') AND NOMBRE LIKE 'cha%' */






 
 