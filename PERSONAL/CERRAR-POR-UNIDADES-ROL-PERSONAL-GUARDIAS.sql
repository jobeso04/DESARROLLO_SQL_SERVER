use BDPERSONAL 
/* Ordena de acuerda la unidad y sub unidad */ 
/* select * from dbo.ServicioDepartUnidad  ORDER BY IdDepartUnid ASC
select * from dbo.ServicioDepartUnidad  ORDER BY IdServDepartUnid ASC
select * from dbo.ServicioDepartUnidad  ORDER BY Nombre  ASC */

select * from dbo.ServicioDepartUnidad  order by asc 

SELECT * FROM dbo.DepartamentoUnidad
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

use BDPERSONAL
DECLARE @lmes int = 8
declare @lanio int = 2016

update ASISTENCIA set INDICADOR = '4' where mes = @lmes and año = @lanio and IdServDepartUnid in ('87','104', '90', '97', '52', '53', '54', '55', '56', '57', '45', 
'47', '96', '103', '2', '11', '12', '3', '4', '5', '6', '7', '8', '99', '114', '48', '49', '50', '95', '46')

update ASISTENCIA set INDICADOR = '4' where mes = @lmes and año = @lanio and IdServDepartUnid = '87'

update ASISTENCIA set INDICADOR = '4' where mes = 8 and año = 2016 and IdServDepartUnid = '87'

update ASISTENCIA set INDICADOR = '4' where mes = 8 and año = 2016 and IdServDepartUnid in ('110', '111', '58', '59', '60', '65', '66', '67', '68', '69', '70',
'71', '72', '74', '75', '76', '78', '80', '81', '82', '83', '84', '28', '29', '30', '21', '22', '23', '86', '24', '25', '26', '27', '113', '93')
