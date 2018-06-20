/* VER MODULO, MENU, SUB MENU Y BOTONES DEL SERVICIO DE EMERGENCIA */

use SIGSALUD
DECLARE @lcModulo varchar(50) = '16000002'
select * from dbo.PLANTILLA_MODULO where ID_PL_M = @lcModulo
select * from plantilla_menu where ID_PL_M = @lcModulo
select * from PLANTILLA_SUBMENU where ID_PL_M = @lcModulo
select * from PLANTILLA_BOTONES where ID_PL_M = @lcModulo

select * from PLANTILLA_BOTONES where ID_HTML like 'traslado%'


15000026	Traslado de pacientes	<i class="fa fa-mail-forward"></i>	0	traslado_pacientes	15000004	15000004	15000002



/* REGISTRAR EL BTON DE REGISTROS-FALLECIDOS EN LA TABLA PLANTILLA_BOTONES */
INSERT INTO [SIGSALUD].[dbo].[PLANTILLA_BOTONES]([ID_PL_BOTON], [NOMBRE],[ICONO],[ESTADO],[ID_HTML],[ID_PL_SUBMENU],[ID_PL_MENU],[ID_PL_M])
     VALUES ('16000026', 'Registrar Fallecidos', '<i class="fa fa-plus" aria-hidden="true"></i>', 0, 'registrar-fallecidos',  '15000004', '15000004', '15000002')
     
EXEC SP_ACTUALIZAR_MODULOS_WEB 'OBSTETRICIA', '16000002'      

select * from USUARIO_WEB

update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('OBSTETRA')) and substring(ID_BOTON,9,8) = '16000026'     

EXEC SP_ACTUALIZAR_MODULOS_WEB 'EMERGENCIA', '15000002' 

/* HASTA AQUI EL ACTUALIZADOR DE LA BASE DE DATOS HA HABILITADO A LOS ENFERMEROS Y TECNICOS LA OCPION DE REGISTRO DE FALLECIDOS,
   SOLO QUEDA CAMBIAR DE ESTADO, VIA SISTEMA O VIA BASE DE DATOS */
   
DECLARE @ldni varchar(13) = '07679560' 
DECLARE @lidboton varchar(20) = @ldni + '16000026'
SELECT * FROM [SIGSALUD].[dbo].[ACCESO_BOTONES] WHERE DNI = @ldni  and ID_BOTON = @lidboton

select * from ACCESO_MENU where NOMBRE = 'Agregados'

/* delete from ACCESO_MENU where NOMBRE = 'Agregados' */


update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('OBSTETRA')) and substring(ID_BOTON,9,8) = '16000026'     

EXEC SP_ACTUALIZAR_MODULOS_WEB 'OBSTETRICIA', '16000002'      


select * from ACCESO_BOTONES  where substring(ID_BOTON,9,8) = '16000026'     

select * from ACCESO_BOTONES where substring(ID_BOTON,9,8) = '17000002'  order by NOMBRE asc   


update ACCESO_BOTONES set ESTADO = 1 where DNI in (select dni from USUARIO_WEB where cargo in ('OBSTETRA')) and substring(ID_BOTON,9,8) = '17000002' 

