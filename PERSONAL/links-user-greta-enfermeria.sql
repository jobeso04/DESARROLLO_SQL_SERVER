/* CREACION DE LINK DE PERSONAL CASO - GRETA */

use SIGSALUD
declare @lcdni varchar(13) = '73351268'

select * from ACCESO_MODULO where DNI = @lcdni
select * from ACCESO_MENU where DNI = @lcdni
select * from ACCESO_SUBMENU where DNI = @lcdni




USE SIGSALUD
select * from ACCESO_SUBMENU where ID_SUBMENU = '97991822491000135253'

select * from ACCESO_SUBMENU where ID_SUBMENU = '97991822491000135253' and DNI = '73351268'

/* update  ACCESO_SUBMENU  set nombre = 'Reporte de Marcaciones (Links)' where ID_SUBMENU = '97991822491000135253' and DNI = '73351268' */

select * from ACCESO_SUBMENU where ID_SUBMENU = '97991822491000135253' and DNI = '73351268'