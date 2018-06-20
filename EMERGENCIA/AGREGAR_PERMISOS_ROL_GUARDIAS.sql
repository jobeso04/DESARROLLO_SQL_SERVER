/* para el caso de shyrley portilla */

use SIGSALUD
DECLARE @lcnombre varchar(100) = 'PORTILLA'
declare @lcdni varchar(8) = '10173369'
/* select DNI, CLAVE, NOMBRES, UNIDAD_ORGANICA, CARGO, FECHA_EXPIRACION from USUARIO_WEB where DNI = @lcdni */
select * from acceso_modulo where DNI = @lcdni
select * from acceso_menu where DNI = @lcdni
select * from ACCESO_SUBMENU where DNI = @lcdni


/* ----------------------------------------------*/
/* 1. AGREGAR DNI A LA TABLA ACCESO MODULO */
declare @lcdnnuevo varchar(8) = '43546642'
declare @lmax int = (select MAX(idservdepartunid) + 1 as maximo  FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad])

/** INSERT INTO [SIGSALUD].[dbo].[ACCESO_MODULO](ID_AM, NOMBRE, URL, IMAGEN, ESTADO, DNI, PLANTILLA)
     VALUES ( '11020212552901091031', 'CONTROL DE ASISTENCIA', '','','1',@lcdnnuevo, 'theme-default')  */
     
/* -----------------------------------------------------------------------*/
/* 2. agregar en la tabla acceso_menu */
/*INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668363', 'Reporte', '<i class="menu-icon fa fa-columns"></i>', 'reporte', '4', '1', '11020212552901091031', @lcdnnuevo)
INSERT INTO [SIGSALUD].[dbo].[ACCESO_MENU]([ID_MENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_AM],[DNI])
     VALUES ('24467405895125668365', 'Asistencia y Programacion', '<i class="menu-icon fa fa-pencil-square-o"></i>', 'asistencia', '2', '1', '11020212552901091031', @lcdnnuevo) */
     
/*******************************************/     
/* 3. agregar en la table sub menu */

/*INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
   values ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', '2', '1', '24467405895125668363', '11020212552901091031', 	@lcdnnuevo)
   
INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
   values ('66906179485734778424', 'Horario Rotativo', '<i class="menu-icon fa fa-calendar"></i>', '../horario_rotativo/index.jsp', '3', '1', '24467405895125668365', '11020212552901091031', 	@lcdnnuevo) */
   
/*  4. Agregar DNI en la tabla de ServicioDepartUnidad */  

/* update [BDPERSONAL].[dbo].[ServicioDepartUnidad] set DniAcceso = @lcdnnuevo where DniAcceso = '04065506' */

/* INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad](IdServDepartUnid, [IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
 values (@lmax, '8', '0171', 'SERVICIO DE CAJA', 'R', '1', @lcdnnuevo) */
