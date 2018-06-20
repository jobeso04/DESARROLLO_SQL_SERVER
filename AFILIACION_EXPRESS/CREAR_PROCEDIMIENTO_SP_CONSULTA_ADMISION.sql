USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_CONSULTA_ADMISION]    Script Date: 10/16/2015 09:45:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEIT
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSULTA_ADMISION] 
	-- Add the parameters for the stored procedure here
	@lnombre varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
        SELECT PACIENTE, HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, DOCUMENTO, CONSULTORIO, FECHA_NACIMIENTO
         FROM [SIGSALUD].[dbo].[V_PACIENTE_EXPRESS] where NOMBRES LIKE '%' + @lnombre + '%' ORDER BY PACIENTE DESC  
	
	
END

GO


