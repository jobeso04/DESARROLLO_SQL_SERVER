/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [EXPEDIENTE]
      ,[FECHA]
      ,[HORA]
      ,[ACTOR]
      ,[NOMBRE]
      ,[ASUNTO]
      ,[PRIORIDAD]
      ,[DIAS]
      ,[TIPO_DOCUMENTO]
      ,[NRO_DOCUMENTO]
      ,[FOLIOS]
      ,[ACTOR_ATENCION]
      ,[ACTOR_ACTUAL]
      ,[OCURRENCIA]
      ,[ESTADO]
      ,[FECHA_CULMINACION]
      ,[USUARIO_CULMINACION]
      ,[SYSINSERT]
      ,[SYSUPDATE]
      ,[ACCION1]
      ,[ACCION2]
      ,[ACCION3]
      ,[HORA_CULMINACION]
      ,[REFERENCIA]
      ,[ACTOR_REGISTRO]
      ,[FORMA_DOCUMENTO]
      ,[OBSERVACIONES]
      ,[COMENTARIO_CULMINACION]
      ,[TIPO_REPORTE]
      ,[ENVIO]
      ,[FECHA_ARCHIVO]
  FROM [TRAMITE].[dbo].[EXPEDIENTE] where ASUNTO like '%AIRE ACONDICIONADO%' ORDER BY FECHA DESC
  
  /* ESTA EN DIRECCION EJECUTIVA */
  
  SELECT *   FROM [TRAMITE].[dbo].[ACTOR] WHERE ACTOR = '0109'
  