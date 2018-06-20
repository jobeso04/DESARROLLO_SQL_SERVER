
/* ASIGNACION DE PERMISOS AL SISTEMA DE PERSONAL - ROL DE GUARDIAS - WEB */

USE SIGSALUD 
/* declare @cdni varchar(8) = '10224641' */

/* Acceso al Modulo */
/* insert into ACCESO_MODULO (ID_AM, NOMBRE, URL, ESTADO, DNI, PLANTILLA)
VALUES ('11020212552901091031', 'CONTROL DE ASISTENCIA', '', 1, @cdni, 'theme-default') 
/* para acceso menu */
insert into ACCESO_MENU (ID_MENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_AM, DNI)
VALUES ('24467405895125668363', 'reporte', '<i class="menu-icon fa fa-columns"></i>', 'reporte', '4','1', '11020212552901091031', @cdni)
insert into ACCESO_MENU (ID_MENU, ID_AM, DNI)
VALUES ('24467405895125668363', '11020212552901091031', '80061151')
/* para acceso sub menu */
insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537790', 'Rep. Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad/index.jsp', '5','1', '24467405895125668363', '11020212552901091031', @cdni)
insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', '2','1', '24467405895125668363', '11020212552901091031', @cdni)
insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537799', 'Rep. Actividades Obs', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad_obst/index.jsp', '6','1', '24467405895125668363', '11020212552901091031', @cdni)
insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537890', 'Rep. Act. Nutricion', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad_nutricion/index.jsp', '7','1', '24467405895125668363', '11020212552901091031', @cdni)
*/

/* REVISAR */
USE SIGSALUD 
declare @cdni varchar(8) = '10224641'
SELECT * FROM USUARIO_WEB WHERE DNI =  @cdni
SELECT * FROM ACCESO_MODULO  WHERE DNI =  @cdni 
SELECT * FROM ACCESO_MENU  WHERE DNI =  @cdni
SELECT * FROM ACCESO_SUBMENU  WHERE DNI =  @cdni

/* USE SIGSALUD 
declare @cdni varchar(8) = '10224641'
delete from ACCESO_MODULO where DNI =  @cdni and PLANTILLA is null
delete from ACCESO_MENU  where DNI =  @cdni and id_menu not in ('0224641015000003', '0224641015000004')
delete from ACCESO_SUBMENU   where DNI =  @cdni and id_submenu not in ('0224641015000004', '0224641015000005')    */





