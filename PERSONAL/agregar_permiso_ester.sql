declare @lcdni varchar(8) = '10173369'
select * from acceso_modulo where DNI = @lcdni and ID_AM = '11020212552901091031'
select * from acceso_menu where DNI = @lcdni and ID_AM = '11020212552901091031'
select * from ACCESO_SUBMENU where DNI = @lcdni and ID_AM = '11020212552901091031'



select * from ACCESO_MODULO where ID_AM = '11020212552901091031' and DNI = @lcdni
