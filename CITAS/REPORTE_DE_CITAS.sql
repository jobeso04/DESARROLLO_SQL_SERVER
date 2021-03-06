/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [IDCITASLIBERADAS]
      ,[CITA_ID]
      ,[FECHA]
      ,[FECHA_OTORGA]
      ,[TIPO_PACIENTE]
      ,[TIPO_CITA]
      ,[PACIENTE]
      ,[NOMBRE]
      ,[SEGURO]
      ,[ESTADO]
      ,[HORA_OTORGA]
      ,[TURNO_CONSULTA]
      ,[CONSULTORIO]
      ,[NOMBRE_CONSULTORIO]
      ,[FECHAREGISTRO]
  FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] order by NOMBRE_CONSULTORIO asc
  
  
  select nombre_consultorio, count(nombre_consultorio) as cuenta FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] group by nombre_consultorio order by cuenta desc
  
    select nombre_consultorio, count(nombre_consultorio) as cuenta FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where turno_consulta = 'M' group by nombre_consultorio order by cuenta desc
    select nombre_consultorio, count(nombre_consultorio) as cuenta FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where turno_consulta = 'T' group by nombre_consultorio order by cuenta desc