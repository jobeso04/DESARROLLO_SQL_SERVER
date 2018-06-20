/* revision de modulos, menus, submenus, botones  agregados */
USE SIGSALUD
/* agregar modulos */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MODULO]([ID_PL_M],[NOMBRE],[URL],[IMAGEN],[ESTADO],[PLANTILLA])
     VALUES ('17000001', 'BIENESTAR FETAL', 'http://localhost/bienestarfetal', 'bienestar.jpg', 1, 'theme-default')
     

/* agregar plantilla menu */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
values ('17000001', 'Inicio', '<i class="menu-icon fa fa-home"></i>', 'inicio', 1, 0, '17000001')

INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_MENU]([ID_PL_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_M])
values ('17000002', 'Area de Trabajo', '<i class="menu-icon fa fa-laptop"></i>', 'area_trabajo', 1, 0, '17000001')

/* agregar plantilla sub menu */
 INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU]([ID_PL_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_MENU],[ID_PL_M])
values('17000002', 'Principal', '<i class="fa fa-file-text-o" aria-hidden="true"></i>', 'principal', 1, 0, '17000002', '17000001')



/* agregar botones */

INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON],[NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     values('17000004', 'Agrega Paciente', '<i class="fa fa-odnoklassniki" aria-hidden="true"></i>', 0, 'agrega_paciente', '17000002', '17000002', '17000001')


/* AGREGAR PERMISOS A DNI : 41595637  */
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO]([ID_AM],[NOMBRE],[URL],[IMAGEN],[ESTADO],[DNI],[PLANTILLA],[MANUAL])
     VALUES ('4159563717000001', 'BIENESTAR FETAL', 'http://localhost/bienestarfetal', 'bienestar.jpg',	1, '41595637', 'theme-default', NULL)


use SIGSALUD
EXEC SP_ACTUALIZAR_MODULOS_WEB 'BIENESTAR FETAL', '17000001' 

update dbo.ACCESO_MENU set estado = 1 where DNI = '41595637' and ID_MENU in ('4159563717000001', '4159563717000002')
update dbo.ACCESO_SUBMENU  set estado = 1 where DNI = '41595637' and ID_AM = '4159563717000001'
update ACCESO_BOTONES set estado = 1 where ID_BOTON = '4159563717000004'




