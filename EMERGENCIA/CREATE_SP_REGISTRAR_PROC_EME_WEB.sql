USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_REGISTRAR_PROC_EME_WEB]    Script Date: 01/11/2017 15:03:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_REGISTRAR_PROC_EME_WEB]
@profesional char(3),
@paciente char(10),
@nombres varchar(120),
@cod_proc char(8),
@tratamiento varchar(250),
@seguro char(3),
@zona_aplicacion varchar(2),
@nro_ticket varchar(25),
@edad char(10),
@fecha_naci char(10),
@sexo char(2),
@cantidad int
AS BEGIN
	BEGIN TRY
		BEGIN TRAN
			BEGIN
				DECLARE @id_proce_web VARCHAR(9);
				select @id_proce_web = dbo.FN_GENERAR_CODIGO_PROC_WEB()
				INSERT INTO EMERGENCIA_PROC_WEB (ID_PROCE_WEB, PROFESIONAL, FECHA, HORA, FECHA_HORA_REG,
				PACIENTE, NOMBRES, CODIGO_PROC, TRATAMIENTO, SEGURO, ZONA_APLICACION, NRO_TICKET,
				EDAD, FECHA_NACI, ESTADO, SEXO, CANTIDAD) VALUES (@id_proce_web, @profesional,GETDATE(),GETDATE(),GETDATE(),
				@paciente,upper(@nombres),@cod_proc,@tratamiento,@seguro,@zona_aplicacion,@nro_ticket,@edad,@fecha_naci,1, @sexo, @cantidad)
				SELECT 1 AS ESTADO, 'FUE GUARDADO CORRECTAMENTE' AS MENSAJE;
			END
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SELECT 0 AS ESTADO,N'ERROR: error '
				+ RTRIM(CAST(@@ERROR AS NVARCHAR(10)))
				+ N' occurred.' AS MENSAJE;	
	END CATCH
END
GO


