/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *  FROM [TRAMITE].[dbo].[ACTOR] where RESPONSABLE like '%arriola%'
  
  update [TRAMITE].[dbo].[ACTOR] set DESCRIPCION = 'OFICINA DE ADMINISTRACION - CPC. MARIO MÁXIMO ROMISONCCO HUAUYA',
     RESPONSABLE = 'CPC. MARIO MÁXIMO ROMISONCCO HUAUYA' where ACTOR = '04'
  