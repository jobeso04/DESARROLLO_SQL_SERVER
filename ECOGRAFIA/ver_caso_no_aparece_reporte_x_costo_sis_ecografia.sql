
USE SIGSALUD

DECLARE @lcdni VARCHAR(13) = '40391148'
SELECT * FROM USUARIO_WEB WHERE DNI = @lcdni
SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni
SELECT * FROM dbo.ACCESO_MENU WHERE DNI = @lcdni 
SELECT * FROM dbo.ACCESO_SUBMENU WHERE DNI = @lcdni
/* update dbo.ACCESO_SUBMENU set NOMBRE = 'Rep x Costo', URL = '../rep_costo/index.jsp' where  ID_SUBMENU = '4394538115000025' and ID_MENU = '4394538115000011'  */

select * FROM dbo.ACCESO_SUBMENU  where  ID_SUBMENU = '4394538115000025' and ID_MENU = '4394538115000011'
SELECT * FROM dbo.ACCESO_MENU WHERE ID_MENU = '4394538115000014'
SELECT * FROM ACCESO_MODULO where ID_AM = '4394538115000006'


select * 