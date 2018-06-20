USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[EXPRESS_BUSCA_DNI]    Script Date: 10/04/2015 15:57:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEIT
-- Create date: 04/10/2015
-- Description:	BUSCAR DNI
-- =============================================
CREATE PROCEDURE [dbo].[EXPRESS_BUSCA_DNI] 
	-- Add the parameters for the stored procedure here
	@lbuscardni varchar(8) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select PACIENTE, HISTORIA, PATERNO, MATERNO, nombre, nombres, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, CONSULTORIO, documento, ESTADO_CIVIL, FECHA_NACIMIENTO, direccion, distrito 
         from V_PACIENTE_EXPRESS where documento = @lbuscardni
  
END

GO


