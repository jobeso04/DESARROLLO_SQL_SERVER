/* Ver, revisar usuario y gregar modulo y plantilla */
use SIGSALUD
/* Para Obstetricia */
/* AGREGAR PLANTILLA MODULO, MENU, SUB MENU, BOTONES, PARA OBSTETRICIA */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MODULO]([ID_PL_M], [NOMBRE],[URL],[IMAGEN],[ESTADO],[PLANTILLA])
   VALUES ('16000002', 'OBSTETRICIA', 'http://localhost/obstetricia', 'obstetricia.jpg', '1', 'theme-adminflare')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
    VALUES ('16000006', 'Inicio', '<i class="menu-icon fa fa-home"></i>', 'inicio', '1', '0', '16000002')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
    VALUES ('16000007', 'Area de Trabajo', '<i class="menu-icon fa fa-laptop"></i>', 'area_trabajo', '2', '0', '16000002')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU] ([ID_PL_SUBMENU], [NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO] ,[ID_PL_MENU], [ID_PL_M])
     VALUES ('16000013', 'Principal', '', 'area_trabajo/principal', '1', '0', '16000007', '16000002')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES](ID_PL_BOTON, NOMBRE, ICONO, ESTADO, ID_HTML, ID_PL_SUBMENU, ID_PL_MENU, ID_PL_M)
     VALUES ('16000027', 'Registrar Antecedentes Obstetricia (Paso 1)', '<i class="fa fa-user-md"></i>', '1', 'registrar-antecedente-obstetricia', '16000013', '16000007', '16000002')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES](ID_PL_BOTON, NOMBRE, ICONO, ESTADO, ID_HTML, ID_PL_SUBMENU, ID_PL_MENU, ID_PL_M)
     VALUES ('16000028', 'Registrar Examen Fisico (Funciones Vitales) (Paso 2)', '<i class="fa fa-female"></i>', '1', 'registrar-examen-fisico', '16000013', '16000007', '16000002')
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES](ID_PL_BOTON, NOMBRE, ICONO, ESTADO, ID_HTML, ID_PL_SUBMENU, ID_PL_MENU, ID_PL_M)
     VALUES ('16000029', 'Registrar Examen Obstetrico (Paso 3)', '<i class="fa fa-pencil-square-o"></i>', '1', 'registrar-examen-obstetrico', '16000013', '16000007', '16000002')


     
/*  Agregando Permisos para usuario */
use SIGSALUD
DECLARE @luserobs varchar(13) = '41595637'
delete from dbo.ACCESO_MODULO  where ID_AM = @luserobs + '15000002' 
update usuario_web set foto = @luserobs + '.jpg' where dni = @luserobs    

INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO] (ID_AM, NOMBRE, URL, IMAGEN, ESTADO, DNI, PLANTILLA)
     VALUES ('4159563716000002', 'OBSTETRICIA', 'http://localhost/obstetricia', 'obstetricia.jpg', '1', @luserobs , 'theme-asphalt')
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU] ([ID_MENU], [NOMBRE], [ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('4159563716000006', 'Inicio', '<i class="menu-icon fa fa-home"></i>', 'inicio', '1', '1', @luserobs + '16000002', @luserobs )   
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU] ([ID_MENU], [NOMBRE], [ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('4159563716000007', 'Area de Trabajo', '<i class="menu-icon fa fa-laptop"></i>', 'area_trabajo', '2', '1', @luserobs + '16000002', @luserobs)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU] ([ID_SUBMENU], [NOMBRE], [ICONO], [URL], [ORDEN], [ESTADO], [ID_MENU], [ID_AM], [DNI])
     VALUES ('4159563716000013', 'Principal', '', 'area_trabajo/principal', '1', '1', @luserobs +  '16000007', @luserobs + '16000002', @luserobs )
INSERT INTO [SIGSALUD].[dbo].[ACCESO_BOTONES]([ID_BOTON], [NOMBRE], [ICONO],[ESTADO],[ID_SUBMENU],[ID_MENU],[ID_AM],[DNI],[ID_HTML])
     VALUES ('4159563716000027', 'Registrar Antecedentes Obstetricia (Paso 1)', '<i class="fa fa-user-md"></i>', '1', @luserobs + '16000013', @luserobs + '16000007', @luserobs + '16000002', @luserobs, 'registrar-antecedente-obstetricia')
INSERT INTO [SIGSALUD].[dbo].[ACCESO_BOTONES]([ID_BOTON], [NOMBRE], [ICONO],[ESTADO],[ID_SUBMENU],[ID_MENU],[ID_AM],[DNI],[ID_HTML])
     VALUES ('4159563716000028', 'Registrar Examen Fisico (Funciones Vitales) (Paso 2)', '<i class="fa fa-female"></i>', '1', @luserobs + '16000013', @luserobs + '16000007', @luserobs + '16000002', @luserobs, 'registrar-examen-fisico')
INSERT INTO [SIGSALUD].[dbo].[ACCESO_BOTONES]([ID_BOTON], [NOMBRE], [ICONO],[ESTADO],[ID_SUBMENU],[ID_MENU],[ID_AM],[DNI],[ID_HTML])
     VALUES ('4159563716000029', 'Registrar Examen Obstetrico (Paso 3)', '<i class="fa fa-pencil-square-o"></i>', '1', @luserobs + '16000013', @luserobs + '16000007', @luserobs + '16000002', @luserobs, 'registrar-examen-obstetrico')
 
 
     
/* Actualizando Para Modulo Obstetricia */
EXEC SP_ACTUALIZAR_MODULOS_WEB 'OBSTETRICIA', '16000002' 


