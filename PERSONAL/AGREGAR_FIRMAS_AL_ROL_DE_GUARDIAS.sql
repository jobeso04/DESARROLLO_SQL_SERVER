/* Pasos para agregar una firma al sistema de Rol de Guardias */

/* EN LA TABLA FIRMA_ROL, ES DONDE SE REALIZARA TODOS LOS CAMBIOS */

/* 1. Localizar el DNI de la Persona en la Tabla MAESTRO, ejemplo : 'DORIA CALIXTRO LUSIANA' */

SELECT * FROM MAESTRO WHERE NOMBRE LIKE '%DORIA CALIXTRO LUSIANA%'

/* 2. Localizar el DNI, que para este caso :  07657923 */

/* 3. Ahora en el archivo de firmas  */
declare @lcfirma varchar(13) = '21528993'
select * from FIRMA_ROL where dni = @lcfirma   /* se muestra un listado en donde el DNI esta asociado a los servicios 3,4,5,6,7,8 */
select * from dbo.ServicioDepartUnidad where IdServDepartUnid in (select unidad from FIRMA_ROL where dni = @lcfirma) 

/* 4. Ubicar ahora el nuevo DNI, que para este caso sera: 21528993  */
SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'huaman murguia%'

/* Ahora a cambiar el DNI */
update FIRMA_ROL set dni = '21528993' where dni = '07657923'
select * from FIRMA_ROL where dni = '07657923'
update FIRMA_ROL set dni = '07657923'  where dni = '21528993'

use BDPERSONAL 
update FIRMA_ROL set dni = '21528993' where dni = '07657923'
delete from FIRMA_ROL where  dni = '00000001'

/* Eliminar a ORE, pero, primero ubicar  */
SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'ORE%'
SELECT * FROM MAESTRO WHERE DNI = '42369161' 

/* ahora ubicarlo en el rol de firmas  */
select * from FIRMA_ROL where dni = '42369161'

/* Ahora Buscando */

select * from FIRMA_ROL where unidad in ('3', '4', '5', '6', '7', '8', '9')


select * from FIRMA_ROL where dni = '00000001'






