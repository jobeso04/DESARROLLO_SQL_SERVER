use SIGSALUD
select * from USUARIO_WEB where NOMBRES like 'GARCIA%'


DECLARE @lcodigo VARCHAR(13) = '054039'
use BDPERSONAL
SELECT * FROM dbo.ServicioMaestro WHERE Codigo = @lcodigo
INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]
           ([IdServDepartUnid]
           ,[IdDepartUnid]
           ,[Codigo]
           ,[Activo])
     VALUES
           (41, 14, @lcodigo, 1)
SELECT * FROM dbo.ServicioMaestro WHERE Codigo = @lcodigo
