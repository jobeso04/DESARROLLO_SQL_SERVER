USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_CIERRE_CUENTAS_LIQUIDACIONES_ANTERIORES]    Script Date: 12/05/2017 09:41:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 05/12/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CIERRE_CUENTAS_LIQUIDACIONES_ANTERIORES] 
	 
AS
BEGIN
	 declare @lcfecha_revisar datetime = convert(datetime, CONVERT(VARCHAR(10), GETDATE() - 1, 120) ,101)
UPDATE [SIGSALUD].[dbo].[CUENTA]  SET ESTADO = '2' WHERE CUENTAID IN (SELECT B.CUENTAID FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN 
[SIGSALUD].[dbo].[CUENTA] B ON A.CUENTAID = B.CUENTAID where A.ESTADO in ('4', '5')  AND A.SEGURO = '01' AND A.FECHA  <= @lcfecha_revisar
AND B.ORIGEN = 'EM' AND B.ESTADO = '1')
UPDATE [SIGSALUD].[dbo].[CUENTA]  SET ESTADO = '2' WHERE ESTADO = '1' and ORIGEN IN ('LB', 'CE', 'OT', 'AD') AND SEGURO = '01' AND FECHA_APERTURA <= CONVERT(DATETIME, @lcfecha_revisar, 101) 

END

GO


