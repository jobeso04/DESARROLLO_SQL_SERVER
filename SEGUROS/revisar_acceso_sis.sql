/* REVISAR EL ACCESO */
use sigsalud	
declare @lcdni  VARCHAR(13) = '42447097'

select * from ACCESO_MODULO where DNI = @lcdni and ID_AM = @lcdni + '15000005'
select * from ACCESO_MENU where DNI = @lcdni and ID_AM = @lcdni + '15000005'
select * from ACCESO_SUBMENU where DNI = @lcdni and ID_AM = @lcdni + '15000005'

