/* ver permisos dra. soto */
use SIGSALUD
declare @lcdni varchar(13) = '44993885'
declare @lcmodulo varchar(30) = @lcdni + '15000002'

/* PARA EMERGENCIA */
SELECT * FROM dbo.ACCESO_MODULO WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM dbo.ACCESO_MENU  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM  dbo.ACCESO_SUBMENU  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM   dbo.ACCESO_BOTONES  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
update dbo.ACCESO_SUBMENU  set estado = '1' WHERE DNI = @lcdni AND ID_AM = @lcmodulo

/* agregar reporte como plantilla */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU] ([ID_PL_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000002', 'Estadistica 239', '<i class="fa fa-info-circle" aria-hidden="true"></i>', 'reporte/reporte_h239', 4, 0, '15000005', '15000002')
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'                
update dbo.ACCESO_SUBMENU  set estado = '1' WHERE DNI = @lcdni AND ID_AM = @lcmodulo
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'                
