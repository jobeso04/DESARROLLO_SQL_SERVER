
/* agregar permisos para sistema web de seguros */

declare @ldni varchar(13) = '41048904'
declare @lmodulo varchar(50) = '4394538115000005'

/* select * from ACCESO_MODULO where DNI = @ldni and id_am = @lmodulo
select * from ACCESO_MENU where DNI = @ldni and id_am = @lmodulo
select * from ACCESO_SUBMENU where DNI = @ldni and id_am = @lmodulo  */


INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM],[NOMBRE],[URL],[IMAGEN],[ESTADO],[DNI],[PLANTILLA])
     VALUES (@lmodulo, 'SEGUROS', 'http://192.168.0.9:8080/seguros', '', 1, @ldni, 'theme-default')

INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('4394538115000012', 'REPORTE', '<i class="menu-icon fa fa-columns"></i>', 'reporte'  , 4, 1, @lmodulo, @ldni)

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU], [NOMBRE],[ICONO], [URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('4394538115000021', 'PME. 2014', '', '../rep_pme/index.jsp', 1, 1, '4394538115000012', @lmodulo, @ldni)
     
/* select * from USUARIO_WEB where NOMBRES like '%solano%'      */
