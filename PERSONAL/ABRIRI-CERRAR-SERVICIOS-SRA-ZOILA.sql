use BDPERSONAL 
/* Ordena de acuerda la unidad y sub unidad */ 
/* select * from dbo.ServicioDepartUnidad  ORDER BY IdDepartUnid ASC
select * from dbo.ServicioDepartUnidad  ORDER BY IdServDepartUnid ASC
select * from dbo.ServicioDepartUnidad  ORDER BY Nombre  ASC */

/* Para cerrar - unidades */

/* 0.- SELECCIONAR EL MES Y EL AÑO */
use BDPERSONAL
DECLARE @lmes int = 8
declare @lanio int = 2016

/* 1.- unicar las unidades que se desean cerrar */
 /* select idservdepartunid, iddepartunid, codigo, nombre from dbo.ServicioDepartUnidad  order by IdDepartUnid asc */
 
/* 2.- localizar la unidad usar el campo idserdepartunid */
/* select idservdepartunid, iddepartunid, codigo, nombre from dbo.ServicioDepartUnidad where idservdepartunid = 87 */
 
/* 3.- En la tabla asistencia, usar el campo : */

/* select * from asistencia  where mes = @lmes and año = @lanio and IdServDepartUnid in ('87','104', '90', '97', '52', '53', '54', '55', '56', '57', '45', 
'47', '96', '103', '2', '11', '12', '3', '4', '5', '6', '7', '8', '99', '114', '48', '49', '50', '95', '46')
*/

update ASISTENCIA set INDICADOR = '4' where mes = @lmes and año = @lanio and IdServDepartUnid in ('87','104', '90', '97', '52', '53', '54', '55', '56', '57', '45', 
'47', '96', '103', '2', '11', '12', '3', '4', '5', '6', '7', '8', '99', '114', '48', '49', '50', '95', '46')


/*************************************************************************************************************/

/* abrir seguros */

/* select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('13', '14', '15', '61')
update ASISTENCIA set INDICADOR = '4' where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('13', '14', '15', '61') */

/* Abrir pediatria */
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('47', '96', '103')
/* update ASISTENCIA set INDICADOR = '1' where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('47', '96', '103') */


/* Abrir gineco obstetricia medicina - ginecologos */
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('104', '45')
/* update ASISTENCIA set INDICADOR = '1' where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('104', '45') */

/* Abrir medicina interna */
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN (select idservdepartunid from dbo.ServicioDepartUnidad  where IdDepartUnid = '14')
select idservdepartunid from dbo.ServicioDepartUnidad  where IdDepartUnid = '14'
/* update ASISTENCIA set INDICADOR = '1' 
 where MES = 5 and AÑO = 2016 and IdServDepartUnid IN (select idservdepartunid from dbo.ServicioDepartUnidad  where IdDepartUnid = '14') */
 
 
 select * from dbo.ServicioDepartUnidad  where IdDepartUnid = '14'
 
 select * from dbo.ServicioDepartUnidad  order by Nombre asc
 

select * from ASISTENCIA where CODIGO = '084492' and MES = 8 and AÑO = 2016

/* Abrir cirugia anestesiologia */
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('48')
select * from ASISTENCIA where MES = 5 and AÑO = 2016 AND CODIGO = '084064'


/* update ASISTENCIA set INDICADOR = '1' where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('48') */

/* ABRIR SALA DE OPERACIONES MEDICINA */
select * from ASISTENCIA where MES = 5 and AÑO = 2016 and IdServDepartUnid IN ('31')

select * from MAESTRO where NOMBRE like 'CORTEZ%'

SELECT * FROM ASISTENCIA WHERE MES = 5 AND AÑO = 2016 AND CODIGO = '084495'

USE BDPERSONAL
UPDATE ASISTENCIA SET INDICADOR = '1' WHERE MES = 5 AND AÑO = 2016 AND CODIGO = '084495'

USE SIGSALUD
SELECT * FROM USUARIO_WEB WHERE NOMBRES LIKE '%NILTON%'


/*********************************************************/