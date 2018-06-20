/* para el caso de shyrley portilla */

use SIGSALUD
DECLARE @lcnombre varchar(100) = 'goya'
declare @lcdni varchar(8) = '44993885'

/* select * from USUARIO_WEB where nombres like '%goya%' */
select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni
select * from acceso_modulo where DNI = @lcdni
select * from acceso_menu where DNI = @lcdni
select * from ACCESO_SUBMENU where DNI = @lcdni



/* 1. AGREGAR DNI A LA TABLA ACCESO MODULO */
declare @lcdnnuevo varchar(8) = '44993885'

 INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO](ID_AM, NOMBRE, URL, IMAGEN, ESTADO, DNI, PLANTILLA)
     VALUES ( '11020212552901091031', 'CONTROL DE ASISTENCIA', '','','1',@lcdnnuevo, 'theme-default')  
     
/* 2. agregar en la tabla acceso_menu */
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668363', 'Reporte', '<i class="menu-icon fa fa-columns"></i>', 'reporte', '4', '1', '11020212552901091031', @lcdnnuevo)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668365', 'Asistencia y Programacion', '<i class="menu-icon fa fa-pencil-square-o"></i>', 'asistencia', '2', '1', '11020212552901091031', @lcdnnuevo) 

/* 3. agregar en la table sub menu */
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
   values ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', '2', '1', '24467405895125668363', '11020212552901091031', 	@lcdnnuevo)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
   values ('66906179485734778424', 'Horario Rotativo', '<i class="menu-icon fa fa-calendar"></i>', '../horario_rotativo/index.jsp', '3', '1', '24467405895125668365', '11020212552901091031', 	@lcdnnuevo) 
/*  4. Agregar DNI en la tabla de ServicioDepartUnidad */  
 /* update [BDPERSONAL].[dbo].[ServicioDepartUnidad] set DniAcceso = @lcdnnuevo where DniAcceso = '07650488'  */
 
/* 5. agregar firma una vez que esta el archivo escaneado */ 
/* update [BDPERSONAL].[dbo].[FIRMA_ROL] set dni = '44993885' where dni = '07650488'  */

use BDPERSONAL
select * from maestro where dni_actual = '07679269'
select * from maestro where nombre like 'suarez%'
select * from maestro where DNI_ACTUAL = '07650770'
asmat
16140791
/** cambiar rol de guardias */

select * from [BDPERSONAL].[dbo].[FIRMA_ROL] where dni = '04065506'
update [BDPERSONAL].[dbo].[FIRMA_ROL] set dni = '04065506' where dni = '16140791'

select * from  dbo.ServicioDepartUnidad where dniacceso = '07657371' 

24

frida:
04065506

dni : shirley
43546642

select * from  dbo.ServicioDepartUnidad where IdServDepartUnid in (select unidad from [BDPERSONAL].[dbo].[FIRMA_ROL] where dni = '04065506')

' servicio de atencion rapida y urgencia '


40

referncia y contrarefernia 61



  