/* para asignar permisos a nuevos usuario */
use SIGSALUD

USE SIGSALUD
select * from usuario_web  where NOMBRES like '%CAROL%' 

USE SIGSALUD
select * from usuario  where NOMBRE like '%BEJARANO%' 


 /* select * from usuario_web where dni = '44151676'  /* PORTILLA */
  union all
  select * from usuario_web where dni = '46333772' /* VIVAS */ */
 
declare @lcdni_antes varchar(8) = '41281723'
declare @lcdni_nuevo varchar(8) = '09702911'

/* select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni_antes */
select * from acceso_modulo where DNI = @lcdni_nuevo
select * from acceso_menu where DNI = @lcdni_nuevo
select * from ACCESO_SUBMENU where DNI = @lcdni_nuevo

/* INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU], [NOMBRE], [ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
  VALUES ('57807489200000537790', 'Rep. Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad/index.jsp', '6', '1', '24467405895125668363', '11020212552901091031', '09702911')

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU], [NOMBRE], [ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
  VALUES ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', '2', '1', '24467405895125668363', '11020212552901091031', '09702911') */
  




/* use bdpersonal
select * from dbo.ServicioDepartUnidad where dniacceso = @lcdni_nuevo */
/*
update acceso_modulo set DNI = @lcdni_nuevo WHERE DNI = @lcdni_antes
update acceso_menu set DNI = @lcdni_nuevo WHERE DNI = @lcdni_antes
update ACCESO_SUBMENU set DNI = @lcdni_nuevo WHERE DNI = @lcdni_antes
use BDPERSONAL */
/* update dbo.ServicioDepartUnidad set dniacceso = @lcdni_nuevo where dniacceso = @lcdni_antes */

/* ********** */


/* DniAcceso GERSON = '41281723' */
/* USE SIGSALUD
SELECT * FROM ACCESO_MENU WHERE ID_MENU = '24467405895125668363' */