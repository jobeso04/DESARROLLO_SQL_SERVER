/* para asignar permisos a nuevos usuario */

use SIGSALUD
 /* select * from usuario_web where nombres like '%lizeth%'  */
declare @lcdni_antes varchar(8) = '43923657'
declare @lcdni_nuevo varchar(8) = '43923657'

select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni_antes
select * from acceso_modulo where DNI = '43923657'
@lcdni_antes
select * from acceso_menu where DNI = '44520086'
@lcdni_antes
select * from ACCESO_SUBMENU where DNI = @lcdni_antes

/* */

update acceso_modulo set DNI = '43923657' where DNI = '44520086'

declare @lcdni_nuevo varchar(8) = '43923657'

select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni_nuevo
select * from acceso_modulo where DNI = @lcdni_nuevo
select * from acceso_menu where DNI = @lcdni_nuevo
select * from ACCESO_SUBMENU where DNI = @lcdni_nuevo

