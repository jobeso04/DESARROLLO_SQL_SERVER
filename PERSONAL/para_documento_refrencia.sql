/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [IDDOCREF]
      ,[IDMASTER]
      ,[TIPODOCREFERENCIA]
      ,[DOCUMENTOREFERENCIA]
      ,[NRODOCUMENTO]
      ,[FECHADOCUMENTO]
      ,[ENTIDADEMITE]
      ,[DESCRIPCION]
      ,[FECHAEXPIRACION]
      ,[SINFECHAEXPIRACION]
      ,[FECHAREGISTRO]
      ,[USUARIO]
  FROM [BDPERSONAL].[dbo].[LGJ_REGISTRODOCUMENTOSREF] where IDMASTER = 8 order by convert(datetime, FECHADOCUMENTO, 103) asc