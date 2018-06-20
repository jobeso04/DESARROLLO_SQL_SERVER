/* VER MODULO, MENU, SUB MENU Y BOTONES DEL SERVICIO DE EMERGENCIA */

use SIGSALUD
select * from dbo.PLANTILLA_MODULO where ID_PL_M = '15000002'
select * from plantilla_menu where ID_PL_M = '15000002'
select * from PLANTILLA_SUBMENU where ID_PL_M = '15000002'
select * from PLANTILLA_BOTONES where ID_PL_M = '15000002'

/* Agregar Sub Menu en la Plantilla SUB MENU */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_SUBMENU] ([ID_PL_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000001', 'Procedimientos UCI', '<i class="fa fa-address-card-o" aria-hidden="true"></i>', 'reporte/procedimientos_uci', 2, 0, '15000005', '15000002')
     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002' 



/* HASTA AQUI EL ACTUALIZADOR DE LA BASE DE DATOS HA HABILITADO A LOS ENFERMEROS EL SUB MENU DE PROCEDIMIENTOS UCI 
   SOLO QUEDA ASIGNAR PERMSIO, VIA SISTEMA O VIA BASE DE DATOS */

update dbo.ACCESO_SUBMENU set ESTADO = 1 
where dni in (select dni from USUARIO_WEB where cargo in ('ENFERMERO')) AND substring(ID_SUBMENU,9,8) = '17000001'



declare @lcdni varchar(13) = '07665910'
declare @lcmodulo varchar(20) = @lcdni + '15000002'

select * from dbo.ACCESO_MODULO where ID_AM = @lcmodulo and DNI = @lcdni
select * from dbo.ACCESO_MENU where ID_AM = @lcmodulo and DNI = @lcdni
select * from dbo.ACCESO_SUBMENU  where ID_AM = @lcmodulo and DNI = @lcdni
select * from   dbo.ACCESO_BOTONES  where ID_AM = @lcmodulo and DNI = @lcdni



