/* AGREGAR LINK EN TODOS LOS USUARIOS */

use SIGSALUD
declare @lcdni varchar(13) = '43923657'
select * from ACCESO_MODULO where DNI = @lcdni
select * from ACCESO_MENU where DNI = @lcdni
select * from ACCESO_SUBMENU where DNI = @lcdni

INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668367', 'Marcaciones de Asistencia', '<i class="fa fa-bars" aria-hidden="true"></i>', 'Marcaciones de Asistencia', 5, 1, '11020212552901091031', @lcdni) 

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('97991822491000135253', 'Reporte de Marcaciones (Link)', '<i class="fa fa-credit-card" aria-hidden="true"></i>', '../marcaciones/index.jsp', 1, 1, '24467405895125668367', '11020212552901091031',@lcdni)
