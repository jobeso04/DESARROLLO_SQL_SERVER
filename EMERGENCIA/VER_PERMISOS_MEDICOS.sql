/* ver permisos dra. soto */
use SIGSALUD
declare @lcdni varchar(13) = '10135222'
declare @lcmodulo varchar(30) = @lcdni + '15000002'

/* PARA EMERGENCIA */
SELECT * FROM dbo.ACCESO_MODULO WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM dbo.ACCESO_MENU  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM  dbo.ACCESO_SUBMENU  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
SELECT * FROM   dbo.ACCESO_BOTONES  WHERE DNI = @lcdni AND ID_AM = @lcmodulo
/* AGREGAR STOCK FARMACIA */
update dbo.ACCESO_SUBMENU set estado = '0' 
where id_submenu in (SELECT DNI + '15000006' FROM USUARIO_WEB WHERE CARGO = 'MEDICO' AND ESTADO = 1)
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU] ([ID_PL_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000002', 'Stock en Farmacia', '<i class="fa fa-window-maximize" aria-hidden="true"></i>', 'area_trabajo/farmacia', 2, 0, '15000004', '15000002') 
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'                
UPDATE dbo.ACCESO_SUBMENU SET ESTADO = 1 WHERE NOMBRE = 'Stock en Farmacia' 
AND DNI IN (SELECT DNI FROM USUARIO_WEB WHERE CARGO IN ('MEDICO', 'ENFERMERO') AND ESTADO = 1)
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'           

/**************/
/* ASIGNA PERMISO A MEDICOS Y ENFERMERAS  */

