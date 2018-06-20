/* AGREGAR PERMISOS AL SISTEMA DE ROL DE GUARDIAS  PARA EL CASO AJARA */
/* PARA EL CASO DE CONTROL DE ASISTENCIA, SOLO USA LAS TABLAS DE ACCESO_MODULO, ACCESO_MENU, ACCESO_SUBMENU */

use SIGSALUD
 declare @lcdni varchar(13) = '07658644' 

 INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM], [NOMBRE], [URL], [IMAGEN], [ESTADO], [DNI], [PLANTILLA])
     VALUES ('11020212552901091031', 'CONTROL DE ASISTENCIA', 'http://192.168.0.9:8080/personal/', '', 1, @lcdni, 'theme-default')
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668363', 'Reporte', '<i class="menu-icon fa fa-columns"></i>', 'reporte', 4, 1, '11020212552901091031', @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668365', 'Asistencia y Programacion', '<i class="menu-icon fa fa-pencil-square-o"></i>', 'asistencia', 2, 1, '11020212552901091031', @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', 2, 1, '24467405895125668363', '11020212552901091031',  @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('57807489238365537790', 'Rep. Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad/index.jsp', 6, 1, '24467405895125668363', '11020212552901091031',  @lcdni)
     

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('66906179485734778424', 'Horario Rotativo', '<i class="menu-icon fa fa-calendar"></i>', '../horario_rotativo/index.jsp', '3', '1', '24467405895125668365', '11020212552901091031', '07658644') 

     



