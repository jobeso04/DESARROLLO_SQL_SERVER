USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_CIERRE_CUENTAS_LIQUIDACIONES_EMERGENCIA]    Script Date: 11/22/2017 15:14:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 22/11/2017
-- =============================================
CREATE PROCEDURE [dbo].[SP_CIERRE_CUENTAS_LIQUIDACIONES_EMERGENCIA] 

AS
BEGIN
declare @lcfecha varchar(10) = CONVERT(DATE, GETDATE(), 103)
update [SIGSALUD].[dbo].[CUENTA] set estado = '2' where estado = '1' and seguro = '01' and ORIGEN = 'EM' and  CUENTAID in 
(select CUENTAID  from [SIGSALUD].[dbo].[EMERGENCIA] where ESTADO in ('4', '5')  AND SEGURO = '01' AND 
FECHA  = CONVERT(DATETIME, @lcfecha, 101) and datediff (hh, CONVERT(TIME, HORA_SAL), CONVERT(TIME, GETDATE())) >= 6)
UPDATE [SIGSALUD].[dbo].[CUENTA]  SET ESTADO = '2' WHERE ESTADO = '1' and ORIGEN = 'CE' AND SEGURO = '01' AND FECHA_APERTURA < CONVERT(DATETIME, @lcfecha, 101) 

END

GO


