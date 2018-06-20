/* AGREGAR MOULOS EN BIENESTAR FETAL */

declare @lc_digitos_anio varchar(2) = (select substring(convert(varchar(4), YEAR(getdate())),3,2))
declare @lc_digito_registro varchar(2) = (SELECT substring(MAX(ID_PL_M),1,2) FROM [SIGSALUD].[dbo].[PLANTILLA_MODULO] where ESTADO = '1')
DECLARE @lidmodulo varchar(20)  = (select case when @lc_digitos_anio = @lc_digito_registro then (select @lc_digitos_anio+ RIGHT('000000' + LTRIM(RTRIM(CONVERT(VARCHAR(6), CONVERT(INT, substring(MAX(ID_PL_M),3,7)) + 1))),6) FROM [SIGSALUD].[dbo].[PLANTILLA_MODULO] where ESTADO = '1') 
   else (SELECT @lc_digitos_anio + '000001') end)
declare @lc_nombre_modulo varchar(60)  = 'BIENESTAR FETAL'
declare @lc_url varchar(150) = 'http://localhost/bienestarfetal'
declare @lc_imagen varchar(60) = 'bienestar.jpg'
declare @ln_estado int = 1
declare @lc_plantilla varchar(100) = 'theme-default'

/* 1.-  Registro e Ingreso de Modulos */

 INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MODULO]([ID_PL_M],[NOMBRE],[URL],[IMAGEN],[ESTADO],[PLANTILLA])
  VALUES (@lidmodulo,@lc_nombre_modulo,@lc_url, @lc_imagen, @ln_estado, @lc_plantilla) 
  
  
/************** FIN 1 - DE REGISTRO DE MODULO ********/  

/* select * from  [SIGSALUD].[dbo].[PLANTILLA_MODULO] */


/* 2.- INICIO DE REGISTRO DE MENU */
DECLARE @lidmodulo_creado varchar(20)  = '17000001'
declare @lc_digitos_anio_menu varchar(2) = (select substring(convert(varchar(4), YEAR(getdate())),3,2))
declare @lc_digito_registro_menu varchar(2) = (SELECT substring(MAX(ID_PL_MENU),1,2) FROM [SIGSALUD].[dbo].[PLANTILLA_MENU])
declare @lid_menu varchar(20)  = 
(select case when @lc_digitos_anio_menu = @lc_digito_registro_menu 
then (select @lc_digitos_anio_menu+ RIGHT('000000' + LTRIM(RTRIM(CONVERT(VARCHAR(6), CONVERT(INT, substring(MAX(ID_PL_MENU),3,7)) + 1))),6) FROM [SIGSALUD].[dbo].[PLANTILLA_MENU]) 
    else (SELECT @lc_digitos_anio_menu + '000001') end)
/* declare @lc_menu_nombre varchar(60)  = 'Inicio'  Area de Trabajo */

declare @lc_menu_nombre varchar(60)  = 'Inicio'
declare @lc_icono varchar(60) = '<i class="menu-icon fa fa-home"></i>' 
declare @lc_url_menu varchar(60) = 'Inicio'
declare @ln_orden int = 2
declare @ln_estado_menu int = 0

/* primer registro */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
     VALUES (@lid_menu, @lc_menu_nombre, @lc_icono, @lc_url_menu, @ln_orden, @ln_estado_menu, @lidmodulo_creado)


/* fin de primer registro ***/


/*** Inicio de Segundo Regstro ***/


/* 2.- INICIO DE SEGUNDO REGISTRO  */
DECLARE @lidmodulo_creado_2 varchar(20)  = '17000001'
declare @lc_digitos_anio_menu_2 varchar(2) = (select substring(convert(varchar(4), YEAR(getdate())),3,2))
declare @lc_digito_registro_menu_2 varchar(2) = (SELECT substring(MAX(ID_PL_MENU),1,2) FROM [SIGSALUD].[dbo].[PLANTILLA_MENU])
declare @lid_menu_2 varchar(20)  = (select case when @lc_digitos_anio_menu_2 = @lc_digito_registro_menu_2
then (select @lc_digitos_anio_menu_2+ RIGHT('000000' + LTRIM(RTRIM(CONVERT(VARCHAR(6), CONVERT(INT, substring(MAX(ID_PL_MENU),3,7)) + 1))),6) FROM [SIGSALUD].[dbo].[PLANTILLA_MENU]) 
    else (SELECT @lc_digitos_anio_menu_2 + '000001') end)
declare @lc_menu_nombre_2 varchar(60)  = 'Area de Trabajo'
declare @lc_icono_2 varchar(60) = '<i class="menu-icon fa fa-laptop"></i>' 
declare @lc_url_menu_2 varchar(60) = 'area_trabajo'
declare @ln_orden_2 int = 2
declare @ln_estado_menu_2 int = 0

/* segundo registro */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
     VALUES (@lid_menu_2, @lc_menu_nombre_2, @lc_icono_2, @lc_url_menu_2, @ln_orden_2, @ln_estado_menu_2, @lidmodulo_creado_2)

/* fin de segundo registro ***/

/* VERIFICACION */

SELECT * FROM [SIGSALUD].[dbo].[PLANTILLA_MODULO]
SELECT * FROM [SIGSALUD].[dbo].[PLANTILLA_MENU]




