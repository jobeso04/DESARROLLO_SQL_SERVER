use SIGSALUD
alter table [SIGSALUD].[dbo].[ENTIDADSIS]  add  ESTADO varchar(1)
update [SIGSALUD].[dbo].[ENTIDADSIS] set estado = '1' where len(entidadsis) = 4
update [SIGSALUD].[dbo].[ENTIDADSIS] set estado = '0' where len(entidadsis) <> 4


SELECT * FROM [SIGSALUD].[dbo].[ENTIDADSIS]