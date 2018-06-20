declare @lcdni varchar(13) = '08158161'
 INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM], [NOMBRE], [URL], [IMAGEN], [ESTADO], [DNI], [PLANTILLA])
     VALUES ('11020212552901091031', 'CONTROL DE ASISTENCIA', 'http://192.168.0.9:8080/personal/', '', 1, @lcdni, 'theme-default')
     
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668363', 'Reporte', '<i class="menu-icon fa fa-columns"></i>', 'reporte', 4, 1, '11020212552901091031', @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668365', 'Asistencia y Programacion', '<i class="menu-icon fa fa-pencil-square-o"></i>', 'asistencia', 2, 1, '11020212552901091031', @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668367', 'Marcaciones de Asistencia', '<i class="fa fa-bars" aria-hidden="true"></i>', 'Marcaciones de Asistencia', 5, 1, '11020212552901091031', @lcdni)
     
     

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
values ('57807489238365537790', 'Rep. Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad/index.jsp', 5, 1, '24467405895125668363', '11020212552901091031', @lcdni)

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
values ('57807489238365537794', 'Asignar Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../asignar_actividades/index.jsp', 5, 1, '24467405895125668365', '11020212552901091031',@lcdni)
   
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', 2, 1, '24467405895125668363', '11020212552901091031',  @lcdni)

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('57807489238365537797', 'Activ. Obstr.', '<i class="menu-icon fa fa-calendar"></i>', '../asignar_actividades_obst/index.jsp', 6, 1, '24467405895125668365', '11020212552901091031',  @lcdni)
     
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
VALUES ('57807489238365537799', 'Rep. Actividades Obs', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad_obst/index.jsp', 6, 1, '24467405895125668363', '11020212552901091031', @lcdni)
     
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
    VALUES ('66906179485734778424', 'Horario Rotativo', '<i class="menu-icon fa fa-calendar"></i>', '../horario_rotativo/index.jsp', 3, 1, '24467405895125668365', '11020212552901091031', @lcdni)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('97991822491000135253', 'Reporte de Marcaciones (Link)', '<i class="fa fa-credit-card" aria-hidden="true"></i>', '../marcaciones/index.jsp', 1, 1, '24467405895125668367', '11020212552901091031',  @lcdni)
     
    
