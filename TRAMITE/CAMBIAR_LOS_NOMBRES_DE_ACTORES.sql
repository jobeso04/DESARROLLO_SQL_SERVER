/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [EXPEDIENTE]
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
  FROM [TRAMITE].[dbo].[EXPEDIENTE] where EXPEDIENTE like '%10730%'
  
  use tramite
  select * from expediente where expediente = '16TD1073000'
  select * from expediente_detalle where expediente = '16TD1073000'
  
  dice : 
  actor : E08562    
  descripcion = CARLOS SALDAÑA CURI
  
  debe decir : 
  actor = P00025   
  descripcion = 'ARTICA CAMARENA JULIA DIOMENICA' 
   
  
  select * from ACTOR where DESCRIPCION like 'artica%'
  
  
  use tramite
  select * from expediente where expediente = '16TD1073000'
  update expediente set actor = 'P00025', nombre = 'ARTICA CAMARENA JULIA DIOMENICA' where expediente = '16TD1073000'
  
  select * from expediente_detalle where expediente = '16TD1073000'
  