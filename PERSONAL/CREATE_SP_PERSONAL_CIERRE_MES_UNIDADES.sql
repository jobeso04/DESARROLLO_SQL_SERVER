USE [BDPERSONAL]
GO

/****** Object:  StoredProcedure [dbo].[SP_PERSONAL_CIERRE_MES_UNIDADES]    Script Date: 07/26/2016 11:41:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEIHJATCH
-- Create date: 26/07/2016
-- Description:	PARA_CERRAR UNIDADES POR MES
-- =============================================
CREATE PROCEDURE [dbo].[SP_PERSONAL_CIERRE_MES_UNIDADES] 
	-- Add the parameters for the stored procedure here
	@lmes int, 
	@lanio int,
	@lservicio varchar(4) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update ASISTENCIA set INDICADOR = '4' where mes = @lmes and año = @lanio and IdServDepartUnid = @lservicio 
END

GO


