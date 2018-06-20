/* CAMBIAR A UN USUARIO DEL ROL DE GUARDI POR OTRO */
/* CASO : LUYO NOLASCO MAXIMO */

/* 1. UBICAR EL DNI DEL ANTERIOR, EN ESTE CASO CACERES.... */
USE BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%CACERES%'
CODIGO = '084023'  DNI = '07650770'

/* AHORA A BUSCAR DE LUYO */
use BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%LUYO%'
CODIGO = '084076'  DNI = '15377449'


/* AHORA A BUSCAR DE LUYO */
SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%anfiloquio%'
SELECT * FROM MAESTRO WHERE DNI = '08671350'
CODIGO = '084017'  DNI = '08671350'



DECLARE @ldni_anterior varchar(13) = '07650770'
declare @ldni_nuevo varchar(13) = '15377449'
use SIGSALUD
/* update acceso_modulo set dni = @ldni_nuevo where DNI = @ldni_anterior
update acceso_menu set dni = @ldni_nuevo where DNI = @ldni_anterior
update ACCESO_SUBMENU set dni = @ldni_nuevo where DNI = @ldni_anterior */


DECLARE @ldni_anterior varchar(13) = '07650770'
declare @ldni_nuevo varchar(13) = '15377449'
use SIGSALUD
select * from acceso_modulo where DNI = @ldni_anterior
select * from acceso_menu where DNI = @ldni_anterior
select * from ACCESO_SUBMENU where DNI = @ldni_anterior

select * from acceso_modulo where DNI = @ldni_nuevo 
select * from acceso_menu where DNI = @ldni_nuevo 
select * from ACCESO_SUBMENU where DNI = @ldni_nuevo 




use SIGSALUD
select * from usuario_web where dni = @ldni_anterior
select * from usuario_web where dni = @ldni_nuevo

select * from acceso_modulo where DNI = @ldni_anterior
select * from acceso_menu where DNI = @ldni_anterior
select * from ACCESO_SUBMENU where DNI = @ldni_anterior


USE BDPERSONAL

use BDPERSONAL 
/* update FIRMA_ROL set dni = '15377449' where dni = '08671350' */

select * from firma_rol where dni = '08671350'

select * from dbo.ServicioDepartUnidad where DniAcceso = '07650770'

/* update dbo.ServicioDepartUnidad set dniacceso = '15377449' where dniacceso = '07650770' */

select * from dbo.ServicioDepartUnidad where IdServDepartUnid in (select unidad from FIRMA_ROL where dni = '08671350') 
