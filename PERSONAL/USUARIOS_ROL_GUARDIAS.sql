/* REVISAR USUARIO QUE ACCESAN AL SISTEMA WEB DE ROL DE GUARDIAS */

use sigsalud	
select NOMBRES,  DNI, CLAVE, CARGO, FECHA_EXPIRACION, ESTADO, FOTO  from USUARIO_WEB
 where DNI in (select dni from acceso_modulo where id_am = '11020212552901091031') order by NOMBRES asc

