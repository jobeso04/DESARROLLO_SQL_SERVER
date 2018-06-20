/* con nombre como referencia */
/* declare @nombrereferencia varchar(60) = 'BEJARANO%';
select * from USUARIO_WEB where nombres LIKE @nombrereferencia; */

/* De Aqui Escoger NOMBRE */

/* y ejecutar el siguiente procedimiento */
 declare @nombre varchar(60) = 'TAIÑA HUANCO CAROLINA'; 
/* declare @nombre varchar(60) = 'BEJARANO ORTIZ PATRICIA ERIKA'; */
declare @query varchar (100) = (select DNI from USUARIO_WEB where nombres = @nombre);
select DNI, NOMBRES, Clave,CARGO, FECHA_EXPIRACION, foto from USUARIO_WEB where nombres = @nombre;

select * from ACCESO_MODULO where DNI = @query;
select * from ACCESO_MENU where dni =  @query; 
select * from ACCESO_SUBMENU where dni =  @query;
select * from ACCESO_BOTONES where DNI =  @query order by ID_HTML;

select * from ACCESO_MODULO where ID_AM like '110202%'

select * from ACCESO_MENU where ID_MENU = '24467405895125668363'

declare @cdni varchar(8) = '80061151'
/* para acceso modulo */
/* insert into ACCESO_MODULO (ID_AM, NOMBRE, URL, ESTADO, DNI, PLANTILLA)
VALUES ('11020212552901091031', 'CONTROL DE ASISTENCIA', '', 1, @cdni, 'theme-default') */

/* para acceso menu */
insert into ACCESO_MENU (ID_MENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_AM, DNI)
VALUES ('24467405895125668363', 'REPORTE', '<i class="menu-icon fa fa-columns"></i>', 'reporte', '4','1', '11020212552901091031', @cdni)

/* para acceso sub menu */
insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537790', 'Rep. Actividades', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad/index.jsp', '5','1', '24467405895125668363', '11020212552901091031', @cdni)

insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537796', 'Rep. Programacion', '<i class="menu-icon fa fa-columns"></i>', '../rep_programacion/index.jsp', '2','1', '24467405895125668363', '11020212552901091031', @cdni)

insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537799', 'Rep. Actividades Obs', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad_obst/index.jsp', '6','1', '24467405895125668363', '11020212552901091031', @cdni)

insert into ACCESO_SUBMENU (ID_SUBMENU, NOMBRE, ICONO, URL, ORDEN, ESTADO, ID_MENU, ID_AM, DNI)
VALUES ('57807489238365537890', 'Rep. Act. Nutricion', '<i class="menu-icon fa fa-calendar"></i>', '../rep_actividad_nutricion/index.jsp', '7','1', '24467405895125668363', '11020212552901091031', @cdni)





ID_MENU	NOMBRE	ICONO	URL	ORDEN	ESTADO	ID_AM	DNI
24467405895125668363	Reporte	<i class="menu-icon fa fa-columns"></i>	reporte	4	1	11020212552901091031	10170113
 
 
 