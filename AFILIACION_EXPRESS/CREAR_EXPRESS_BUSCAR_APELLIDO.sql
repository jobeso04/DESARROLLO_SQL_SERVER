USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[EXPRESS_BUSCAR_APELLIDO]    Script Date: 10/04/2015 15:57:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		UEIT
-- Create date: 05/10/2015
-- Description:	BUSCAR POR APELLIDOS
-- =============================================
CREATE PROCEDURE [dbo].[EXPRESS_BUSCAR_APELLIDO] 
	-- Add the parameters for the stored procedure here
	@lapellidos varchar(250) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select PACIENTE, HISTORIA, PATERNO, MATERNO, nombre, nombres, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, CONSULTORIO, documento, ESTADO_CIVIL, FECHA_NACIMIENTO, direccion, distrito 
         from V_PACIENTE_EXPRESS where nombres like '' + @lapellidos + '%' ORDER BY nombres DESC   
END


GO


