USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_LIQUIDA_RETORNA_CUENTA]    Script Date: 12/12/2017 09:55:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LIQUIDA_RETORNA_CUENTA]
@id_cita char(10),
@dni_user varchar(13)

AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	  SET LANGUAGE Spanish
	  UPDATE CUENTA SET ESTADO='1', FECHA_ACTIVACION = GETDATE(), USER_ACTIVACION = @dni_user  WHERE CUENTAID = @id_cita;
END
GO


