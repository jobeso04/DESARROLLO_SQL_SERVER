use BDPERSONAL
update [BDPERSONAL].[dbo].[ServicioDepartUnidad] set Codigo =  '0242' where IdServDepartUnid = 112

INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (112, 14, '084669', 1)

INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (112, 14, '084670', 1)

INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (112, 14, '084674', 1)
           
INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (112, 14, '084658', 1)
           