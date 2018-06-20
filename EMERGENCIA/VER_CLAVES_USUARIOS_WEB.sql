use SIGSALUD
DECLARE @lcnombre varchar(100) = 'SOTO'
select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where nombres like '%' + @lcnombre + '%' 

/* declare @lcdni varchar(8) = '08145847'
select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni
select * from acceso_menu where DNI = @lcdni
select * from acceso_modulo where DNI = @lcdni
select * from ACCESO_SUBMENU where DNI = @lcdni

select * from ACCESO_SUBMENU where id_submenu = '0814584715000025'
select * from ACCESO_SUBMENU where nombre = 'Procedimientos Rango de Fechas'
select * from acceso_modulo where nombre = 'Procedimientos Rango de Fechas'
select * from dbo.ACCESO_BOTONES */


