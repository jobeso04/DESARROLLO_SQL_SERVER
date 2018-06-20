declare @lctransaccion varchar(20) = '17003762'
delete from  [SIGSALUD].[dbo].[INGRESODEVD] where INGRESOID = @lctransaccion
delete from  [SIGSALUD].[dbo].[INGRESODEVC] where INGRESOID = @lctransaccion



declare @lctransaccion varchar(20) = '17003768'
delete from  [SIGSALUD].[dbo].[INGRESODEVD] where INGRESOID = @lctransaccion
delete from  [SIGSALUD].[dbo].[INGRESODEVC] where INGRESOID = @lctransaccion