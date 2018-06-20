/* VER MODULO, MENU, SUB MENU Y BOTONES DEL SERVICIO DE EMERGENCIA */

use SIGSALUD
select * from dbo.PLANTILLA_MODULO where ID_PL_M = '15000002'
select * from plantilla_menu where ID_PL_M = '15000002'
select * from PLANTILLA_SUBMENU where ID_PL_M = '15000002'
select * from PLANTILLA_BOTONES where ID_PL_M = '15000002'

INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON], [NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     VALUES ('16000001', 'Registrar Fallecidos', '<i class="fa fa-universal-access"></i>', 0, 'registrar-fallecidos',  '15000004', '15000004', '15000002')
