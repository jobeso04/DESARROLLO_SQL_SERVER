/* para asignar permisos a nuevos usuario */

use SIGSALUD
  select * from usuario_web where dni = '43923657'  /* tenicela - lizeth */
  union all
  select * from usuario_web where dni = '44520086' /* clara */
  union all
  select * from usuario_web where dni = '41163748' /* castillo */
 
declare @lcdni_antes varchar(8) = '44520086'
declare @lcdni_nuevo varchar(8) = '43923657'

select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni_antes
select * from acceso_modulo where DNI = '43923657'
@lcdni_antes
select * from acceso_menu where DNI = '44520086'
@lcdni_antes
select * from ACCESO_SUBMENU where DNI = @lcdni_antes

/* */

update acceso_modulo set DNI = '44520086' where DNI = '41163748'

declare @lcdni_nuevo varchar(8) = '41163748' /* karina */

select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni_nuevo
select * from acceso_modulo where DNI = @lcdni_nuevo
select * from acceso_menu where DNI = @lcdni_nuevo
select * from ACCESO_SUBMENU where DNI = @lcdni_nuevo

use BDPERSONAL
select * from  dbo.ServicioDepartUnidad where dniacceso = '43923657'

/* karina castillo - 41163748 */

update dbo.ServicioDepartUnidad set dniacceso = '43923657' where dniacceso = '44520086' 
