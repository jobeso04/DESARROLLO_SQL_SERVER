/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [TRANSACCION]
      ,[FECHA]
      ,[USUARIO]
      ,[PC]
      ,[MODULO]
      ,[SENTENCIASQL]
      ,[TABLA]
      ,[USUARIORED]
  FROM [SIGSALUD].[dbo].[BITACORA]
  
  8-enero
  11-enero
  
  select * from [SIGSALUD].[dbo].[BITACORA] where fecha between convert(datetime, '2016-01-08',101) and convert(datetime, '2016-01-08',101) +  CAST('23:59:59' AS DATETIME) and USUARIO = 'PBEJARANO'
     order by FECHA, MODULO asc
  
    select * from [SIGSALUD].[dbo].[BITACORA] where fecha between convert(datetime, '2016-01-11',101) and convert(datetime, '2016-01-11',101) +  CAST('23:59:59' AS DATETIME)
     order by FECHA asc
  
  
  INSERT INTO RolReprogramacion(ROLREPROGRAMACIONID,FECHA,MEDICO,FECHA_PROGRAMADO,CONSULTORIO,TURNO_CONSULTA,MOTIVO,DOCUMENTO,OBSERVACION,TIPO,ESTADO,sysInsert) 
  
  VALUES(!1600025!,!20160108!,!MHT!,!20160108!,!1012!,!M!,! !,! !,! !,!1!,!1!,!                08/01/2016 08:06:07 !)

use sigsalud  
  select * from medico where medico = 'HRA'
  
  SELECT * FROM CITA WHERE CITA_ID = '160008520'
  SELECT * FROM Cita WHERE Cita_id = '160008521'
  
  DELETE FROM Cita WHERE Cita_id=¡160008520¡