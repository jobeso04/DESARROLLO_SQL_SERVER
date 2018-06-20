use SIGSALUD
/* declare @lcdni varchar(13) = '08133827'
 declare @lcdni_remplazo varchar(13) = '46740341' */
 
declare @lcdni varchar(13) = '07678050 '
 SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni AND ID_AM = '11020212552901091031'
 SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni AND ID_AM = '11020212552901091031'
 SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni AND ID_AM = '11020212552901091031'

 
/* update  ACCESO_MODULO set dni = @lcdni_remplazo WHERE DNI = @lcdni AND ID_AM = '11020212552901091031' */
update ACCESO_MENU set DNI = @lcdni_remplazo WHERE DNI = @lcdni AND ID_AM = '11020212552901091031'


update ACCESO_SUBMENU set DNI = @lcdni_remplazo WHERE DNI = @lcdni AND ID_AM = '11020212552901091031'
 
 

select * from USUARIO_WEB where DNI = '08133827'


use BDPERSONAL
select * from dbo.DepartamentoUnidad

select * from dbo.ServicioDepartUnidad where DniAcceso = '08133827'

update dbo.ServicioDepartUnidad set dniacceso = '46740341' where DniAcceso = '08133827'
