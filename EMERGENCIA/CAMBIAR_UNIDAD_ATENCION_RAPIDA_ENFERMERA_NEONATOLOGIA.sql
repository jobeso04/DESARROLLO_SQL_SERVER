/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [IdServMaestro]
      ,[IdServDepartUnid]
      ,[IdDepartUnid]
      ,[Codigo]
      ,[Activo]
  FROM [BDPERSONAL].[dbo].[ServicioMaestro] WHERE Codigo = '084569'
  
USE BDPERSONAL  
SELECT * FROM dbo.ServicioDepartUnidad ORDER BY Nombre ASC

084569
  /* ESTAN EN IDSERVDEPARTUNID = 71 AND IDDEPARTUNID = 19 */
  
  /* DEBEN ESTAR EN : IDsERVdEPARTuNID = 71 AND IDDEPARTUNID = 19 */
  
  SELECT * FROM ASISTENCIA WHERE AÑO = 2016 AND MES = 4 AND Codigo = '084214'
  SELECT * FROM ASISTENCIA WHERE AÑO = 2016 AND MES = 4 AND Codigo = '084349'
  SELECT * FROM ASISTENCIA WHERE AÑO = 2016 AND MES = 4 AND Codigo = '084283'
  SELECT * FROM ASISTENCIA WHERE AÑO = 2016 AND MES = 4 AND Codigo = '084589'
  SELECT * FROM ASISTENCIA WHERE AÑO = 2016 AND MES = 4 AND Codigo = '084569'
  
  /* UPDATE ASISTENCIA SET IdServDepartUnid = '71' WHERE AÑO = 2016 AND MES = 4 AND Codigo in ('084214', '084349', '084283', '084589', '084569') */

  
  
  /* ESAT EN 74 */
  
  
  