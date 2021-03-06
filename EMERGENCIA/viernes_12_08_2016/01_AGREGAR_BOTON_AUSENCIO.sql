/* VER MODULO, MENU, SUB MENU Y BOTONES DEL SERVICIO DE EMERGENCIA */

use SIGSALUD
select * from dbo.PLANTILLA_MODULO where ID_PL_M = '15000002'
select * from plantilla_menu where ID_PL_M = '15000002'
select * from PLANTILLA_SUBMENU where ID_PL_M = '15000002'
select * from PLANTILLA_BOTONES where ID_PL_M = '15000002' 

/* REGISTRAR EL BTON DE REGISTROS-FALLECIDOS EN LA TABLA PLANTILLA_BOTONES */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON], [NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     VALUES ('16000027', 'Registrar Ausencia del Paciente', '<i class="fa fa-angle-double-up" aria-hidden="true"></i>', 0, 'registrar-ausencia',  '15000004', '15000004', '15000002')
     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'      
update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('ENFERMERO', 'TECNICO')) and substring(ID_BOTON,9,8) = '16000027'     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002' 

/* HASTA AQUI EL ACTUALIZADOR DE LA BASE DE DATOS HA HABILITADO A LOS ENFERMEROS Y TECNICOS LA OCPION DE REGISTRO DE FALLECIDOS,
   SOLO QUEDA CAMBIAR DE ESTADO, VIA SISTEMA O VIA BASE DE DATOS */
   
DECLARE @ldni varchar(13) = '07679560' 
DECLARE @lidboton varchar(20) = @ldni + '16000027'
SELECT * FROM [SIGSALUD].[dbo].[ACCESO_BOTONES] WHERE DNI = @ldni  and ID_BOTON = @lidboton


/* select * from ACCESO_MENU where NOMBRE = 'Agregados' */
/* delete from ACCESO_MENU where NOMBRE = 'Agregados' */
