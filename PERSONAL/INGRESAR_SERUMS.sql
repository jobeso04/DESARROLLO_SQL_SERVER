select * from dbo.ServicioDepartUnidad where DniAcceso = '46333772'
select * from dbo.ServicioDepartUnidad order by IdServDepartUnid asc


/* AGREGAR SERUMS EN MEDICINA */
INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES (14, '242', 'SERUMS', 'R', 1, '06808595')

INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES (21, '0327', 'SERUMS', 'R', 1, '46333772')
