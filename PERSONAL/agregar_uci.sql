/* Para Agregar Nuevo Servicio a las Unidades para el Rol de Guardias */
/* Agregado la Unidad UCI con el DNI de usuario secretaria de Enfermera */

use BDPERSONAL
INSERT INTO [BDPERSONAL].[dbo].[DepartamentoUnidad]([Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES('0410', 'UNIDAD DE CUIDADOS INTENSIVOS', 'R', '1', '')

INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
    VALUES ('19', '0410', 'SERVICIO DE ENFERMERAS DE UCI ', 'R', '1', '73351268')
