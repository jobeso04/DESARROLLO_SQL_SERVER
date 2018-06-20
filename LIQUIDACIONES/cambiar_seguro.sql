use SIGSALUD
select * from CUENTA where CUENTAID = '1713747' 

update CUENTA set seguro = '05' where CUENTAID = '1713747' 


SELECT [SEGURO]
      ,[NOMBRE]
      ,[ACTIVO]
      ,[TIPO_SEGURO]
      ,[CODSEG]
      ,[CODHIS]
      ,[CODCITA]
      ,[FLAT_EME_WEB]
      ,[FLAT_LIQ_WEB]
  FROM [SIGSALUD].[dbo].[SEGURO]


