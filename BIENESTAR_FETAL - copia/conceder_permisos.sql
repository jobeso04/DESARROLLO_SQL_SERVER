/* AGREGA LOS PERMISOS A NUEVO MODULO */
use sigsalud
DECLARE @lcdni VARCHAR(13) = '41595637'
declare @lc_modulo varchar(13) = '17000001'
declare @lc_url varchar(150) = 'http://localhost/bienestarfetal'
declare @lc_nombre varchar(20) = 'BIENESTAR FETAL'
Declare @lc_imagen varchar(100) = 'bienestar.jpg'
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM], [NOMBRE],[URL],[IMAGEN],[ESTADO],[DNI],[PLANTILLA])
     VALUES (@lcdni + @lc_modulo, @lc_nombre, @lc_url, @lc_imagen, 1, @lcdni, 'theme-default')
     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'BIENESTAR FETAL', '17000001'     
 
     
 /* Agregar acceso menu  

DECLARE @lcdni VARCHAR(13) = '41595637'
declare @lc_modulo varchar(13) = '17000001'
declare @lc_digitos_anio_acceso_menu varchar(2) = (select substring(convert(varchar(4), YEAR(getdate())),3,2))
declare @lc_digito_registro_acceso_menu varchar(2) = (select max(SUBSTRING(id_menu,9,2)) from [SIGSALUD].[dbo].[ACCESO_MENU] where substring(ID_MENU,1,4) <> '2446')
declare @lid_acceso_menu varchar(20)  = (select case when @lc_digitos_anio_acceso_menu = @lc_digito_registro_acceso_menu 
then (select @lc_digitos_anio_acceso_menu+ RIGHT('000000' + LTRIM(RTRIM(CONVERT(VARCHAR(6), CONVERT(INT, substring(MAX(ID_MENU),3,7)) + 1))),6) FROM [SIGSALUD].[dbo].[ACCESO_MENU]) 
    else (SELECT @lc_digitos_anio_acceso_menu + '000001') end)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES (@lid_acceso_menu + @lcdni, 'Inicio', '<i class="menu-icon fa fa-home"></i>', 'inicio', 1,1, @lc_modulo + @lcdni, @lcdni)
     
*/

/** agregar sub menu **/

DECLARE @lcdni VARCHAR(13) = '41595637'
declare @lc_modulo varchar(13) = '17000001' 
declare @lc_digitos_anio_acceso_sub_menu varchar(2) = (select substring(convert(varchar(4), YEAR(getdate())),3,2))
declare @lc_digito_registro_acceso_sub_menu varchar(2) = (select max(SUBSTRING(id_submenu,9,2)) from [SIGSALUD].[dbo].[ACCESO_SUBMENU] where substring(ID_MENU,1,4) <> '2446')
declare @lid_acceso_sub_menu varchar(20)  = (select case when @lc_digitos_anio_acceso_sub_menu = @lc_digito_registro_acceso_sub_menu 
then (select convert(varchar(8), convert(int, max(SUBSTRING(id_submenu,9,8))) + 1) from [SIGSALUD].[dbo].[ACCESO_SUBMENU] where substring(ID_MENU,1,4) <> '2446') 
    else (SELECT @lc_digitos_anio_acceso_sub_menu + '000001') end)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
      VALUES (@lcdni + @lid_acceso_sub_menu, 'Principal', '<i class="menu-icon fa fa-home"></i>', 'area_trabajo/principal', 1,1, '4159563717000002', @lcdni + @lc_modulo, @lcdni)



/* fin de agregar sub menu */

select * from ACCESO_MODULO where DNI = '41595637'
select * from dbo.ACCESO_MENU where DNI = '41595637'
select * from dbo.ACCESO_SUBMENU where DNI = '41595637'


DELETE FROM dbo.ACCESO_SUBMENU where ID_SUBMENU = '4159563717000002'
      
      
