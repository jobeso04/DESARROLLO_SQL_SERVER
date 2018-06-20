INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (48, '15', '084442', 1)
SELECT * FROM V_MAESTRO WHERE CODIGO = '084442'

select * from ASISTENCIA where CODIGO = '084442' and MES = 4 and AÑO = 2016
select * from ASISTENCIA where CODIGO = '084442' and MES = 6 and AÑO = 2016

select * from dbo.ServicioMaestro WHERE CODIGO = '084442'