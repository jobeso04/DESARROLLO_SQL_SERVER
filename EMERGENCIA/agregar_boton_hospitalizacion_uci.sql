/* VER MODULO, MENU, SUB MENU Y BOTONES DEL SERVICIO DE EMERGENCIA */

use SIGSALUD
DECLARE @lcModulo varchar(50) = '15000002'
/*
select * from dbo.PLANTILLA_MODULO where ID_PL_M = @lcModulo
select * from plantilla_menu where ID_PL_M = @lcModulo
select * from PLANTILLA_SUBMENU where ID_PL_M = @lcModulo */
select * from PLANTILLA_BOTONES where ID_PL_M = @lcModulo

/* CODIGO PARA AGREGAR EL BOTON DE HOSPITALIZACION A UCI */
/* select * from [SIGSALUD].[dbo].[PLANTILLA_BOTONES] */

INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON],[NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     VALUES ('17000003', 'Hospitalizacion a UCI', '<i class="fa-h-square" aria-hidden="true"></i>', 0, 'hospital-uci', '15000004', '15000004', '15000002')

EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002'

update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('ENFERMERO') AND ESTADO = '1')
 and substring(ID_BOTON,9,8) = '17000003'


/* HASTA AQUI EL ACTUALIZADOR DE LA BASE DE DATOS HA HABILITADO A LOS ENFERMEROS Y TECNICOS EL BOTON DE HOSPITALIZACION A UCI */
   
DECLARE @ldni varchar(13) = '07679560' 
DECLARE @lidboton varchar(20) = @ldni + '17000003'
SELECT * FROM [SIGSALUD].[dbo].[ACCESO_BOTONES] WHERE DNI = @ldni  and ID_BOTON = @lidboton


select * from MEDICO where NOMBRE like '%eisel%'



