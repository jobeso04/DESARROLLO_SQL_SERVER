/* Agregar sub menu : BIENESTAR FETAL */ 
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU]([ID_PL_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000002', 'Bienestar Fetal', '<i class="menu-icon fa fa-home"></i>', 'area_trabajo/bienestar', 2, 0, '16000007', '16000002')
     
/* Agregar Botones */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON],[NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000004', 'Agregar / Modificar Paciente Bienestar Fetal', '<i class="fa fa-user-md"></i>', 0, 'agregar_paciente', '17000002', '16000007', '16000002')
     
     
/* ACTUALIZAR */
use SIGSALUD
EXEC SP_ACTUALIZAR_MODULOS_WEB 'SYSMAN', '15000001' 
EXEC SP_ACTUALIZAR_MODULOS_WEB 'OBSTETRICIA', '16000002' 

update dbo.ACCESO_SUBMENU  set estado = 1 WHERE DNI = '41595637' and ID_SUBMENU = '4159563717000002'
update ACCESO_BOTONES set estado = 1 where ID_BOTON = '4159563717000004'

