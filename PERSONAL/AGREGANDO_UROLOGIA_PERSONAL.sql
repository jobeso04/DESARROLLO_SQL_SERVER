/* agregando urologia a departamento de cirugia */


use BDPERSONAL

select * from dbo.ServicioDepartUnidad where DniAcceso = '08133827'

INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES ('15', '0384', 'SERVICIO DE UROLOGIA', 'R', '1', '08133827')
