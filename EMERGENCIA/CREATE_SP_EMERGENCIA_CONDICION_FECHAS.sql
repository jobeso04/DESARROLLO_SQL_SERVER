USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[EMERGENCIA_CONDICION_FECHAS]    Script Date: 02/28/2018 16:32:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[EMERGENCIA_CONDICION_FECHAS] 
AS
BEGIN
declare @lcfecha datetime = convert(date, getdate(), 101)
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '01'   where fecha = @lcfecha AND DESTINO IN ('12', '09', '01')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '04'   where fecha = @lcfecha AND DESTINO IN ('04', '08')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '02'   where fecha = @lcfecha AND DESTINO IN ('07')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '03'   where fecha = @lcfecha AND DESTINO IN ('06')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET CONDICION_EGRESO = '0'   where fecha = @lcfecha AND DESTINO IN ('02', '10')
update [SIGSALUD].[dbo].[EMERGENCIA]  set HORA_ING = HORA_ATEN, FECHA_ING = convert(varchar(10), fecha_atencion, 103)
where fecha = @lcfecha  and HORA_ATEN is not null 

END

GO


