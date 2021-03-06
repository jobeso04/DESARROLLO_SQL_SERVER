/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ID_EME_DET_WEB]
      ,[PROFESIONAL]
      ,[FECHA]
      ,[HORA]
      ,[FECHA_HORA_REG]
      ,[EMERGENCIA_ID]
      ,[DETALLE]
      ,[PROCEDIMIENTO]
      ,[TEMP]
      ,[PAS]
      ,[PAD]
      ,[FC]
      ,[FR]
      ,[SAT_OX]
      ,[PESO]
      ,[ESTADO]
      ,[OBSERVACION_ESTADO]
      ,[PACIENTE]
      ,[LUGAR]
      ,[TIPO_PROCESO]
      ,[VIA_ORAL]
      ,[PARENTERAL]
      ,[TRATAMIENTO]
      ,[TRANSFUSIONES]
      ,[INFUSIONES]
      ,[H2O]
      ,[OTROS_I]
      ,[DIURESIS]
      ,[DEPOSICIONES]
      ,[DRENAJES]
      ,[VOMITOS]
      ,[PERD_INSENS]
      ,[OTROS_E]
      ,[NRO_HORAS]
      ,[TURNO]
      ,[ANTES_CONSULT]
      ,[AHORA_CONSULT]
      ,[AHORA_PROFESIONAL]
      ,[DETALLE_NUEVO]
      ,[CONSULTORIO_SERVICIO]
  FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] where EMERGENCIA_ID = '15052471' order by fecha_hora_reg asc
  
  
  select upper(DETALLE)  FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] where EMERGENCIA_ID = '15052471'  and  len(substring(DETALLE,1,180)) = 180  order by fecha_hora_reg asc
  
  select len('abc') --devuelve 4
  
  
  SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = '15052471'