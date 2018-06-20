/* INSERT INTO [BDPERSONAL].[dbo].[DepartamentoUnidad]
           ([Codigo]
           ,[Nombre]
           ,[Tipo]
           ,[Activo]
           ,[DniAcceso])
     VALUES
           ('0410', 'UNIDAD DE CUIDADOS INTENSIVOS', 'R', '1', '')
           
INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]
           ([IdDepartUnid]
           ,[Codigo]
           ,[Nombre]
           ,[Tipo]
           ,[Activo]
           ,[DniAcceso])
     VALUES
           ('19', '0410', 'SERVICIO DE ENFERMERAS DE UCI ', 'R', '1', '73351268')
           */
           
           INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]
           ([IdDepartUnid]
           ,[Codigo]
           ,[Nombre]
           ,[Tipo]
           ,[Activo]
           ,[DniAcceso])
     VALUES
           ('19', '0410', 'SERVICIO DE TECNICAS UCI', 'R', '1', '73351268')


SELECT * FROM dbo.ServicioMaestro WHERE Codigo = '084101'
SELECT * FROM ASISTENCIA  WHERE Codigo = '084101' AND MES = 5 AND AÑO = 2016

USE BDPERSONAL
SELECT * FROM dbo.ServicioDepartUnidad


UPDATE ServicioMaestro SET IdServDepartUnid = '110' WHERE Codigo = '084570' 


110

DECLARE @lcodigo VARCHAR(13) = '084099'
UPDATE ServicioMaestro SET IdServDepartUnid = '67' WHERE Codigo = @lcodigo
UPDATE ASISTENCIA SET IdServDepartUnid = '67' WHERE Codigo = @lcodigo AND MES = 5 AND AÑO = 2016
SELECT * FROM ASISTENCIA WHERE Codigo = @lcodigo AND MES = 5 AND AÑO = 2016 

use BDPERSONAL
select * from MAESTRO where NOMBRE like '%lazo%'

/* donde estaba */

select 