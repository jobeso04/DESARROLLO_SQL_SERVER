/* agregar datos en ecografia */

USE SIGSALUD	
DECLARE @lcdni varchar(8) = '46673979'
 
/*SELECT * FROM dbo.ACCESO_MODULO WHERE DNI = @lcdni
SELECT * FROM dbo.ACCESO_MENU WHERE DNI = @lcdni
SELECT * FROM dbo.ACCESO_SUBMENU WHERE DNI = @lcdni
SELECT * FROM dbo.ACCESO_BOTONES WHERE DNI = @lcdni */
/*
update dbo.ACCESO_MODULO set dni = '06812484' WHERE DNI = @lcdni
update dbo.ACCESO_Menu  set dni = '06812484' WHERE DNI = @lcdni
update dbo.ACCESO_SUBMENU  set dni = '06812484' WHERE DNI = @lcdni
*/


INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]
           ([ID_AM]
           ,[NOMBRE]
           ,[URL]
           ,[IMAGEN]
           ,[ESTADO]
           ,[DNI]
           ,[PLANTILLA]
           ,[MANUAL])
     VALUES
        ('4394538115000004', 'ECOGRAFIA', 'http://192.168.0.9:8080/ecografia', NULL, 1, @lcdni, 'theme-adminflare', NULL)
        
        
        
        
           (<ID_AM, varchar(20),>
           ,<NOMBRE, varchar(60),>
           ,<URL, varchar(150),>
           ,<IMAGEN, varchar(60),>
           ,<ESTADO, int,>
           ,<DNI, char(8),>
           ,<PLANTILLA, varchar(100),>
           ,<MANUAL, varchar(150),>)
GO




ID_AM	NOMBRE	URL	IMAGEN	ESTADO	DNI	PLANTILLA	MANUAL
4394538115000004	ECOGRAFIA	http://192.168.0.9:8080/ecografia	NULL	1	46673979	theme-adminflare	NULL





