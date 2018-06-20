USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[GRABAR_CITAS_A_LIBERAR]    Script Date: 10/22/2015 08:58:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEIT
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GRABAR_CITAS_A_LIBERAR] 
AS
BEGIN
	SET LANGUAGE Spanish;
	DECLARE @fecha_hoy VARCHAR(15);
	SET @fecha_hoy = CONVERT(VARCHAR(2),DAY(GETDATE())) + '/' + CONVERT(VARCHAR(2),MONTH(GETDATE())) + '/' + CONVERT(VARCHAR(4),YEAR(GETDATE()));		
	DECLARE @hora TIME(7);
	DECLARE @h_hora varchar(5);
	DECLARE @turno char(1);
	SET @hora=GETDATE();
	SET @h_hora = CONVERT(nvarchar(5), @hora, 108);
	if(@h_hora<'09:00')
		SET @turno='M';
	else if(@h_hora>='13:00' and @h_hora<'15:00')
		SET @turno='T';
	INSERT INTO [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] (FECHA, FECHA_OTORGA, TIPO_PACIENTE, TIPO_CITA, PACIENTE, NOMBRE, SEGURO, ESTADO, HORA_OTORGA, TURNO_CONSULTA, CONSULTORIO, NOMBRE_CONSULTORIO)
  	SELECT FECHA, FECHA_OTORGA, TIPO_PACIENTE, TIPO_CITA, PACIENTE, NOMBRE, SEGURO, ESTADO, HORA_OTORGA,TURNO_CONSULTA, CONSULTORIO, NOMBRE_CONSULTORIO
	FROM V_CITA WHERE ESTADO='2' AND FECHA=@fecha_hoy AND FECHA_OTORGA!=@fecha_hoy AND TURNO_CONSULTA=@turno;
END

GO


