USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_PROC_EME_ENF_TEC_WEB]    Script Date: 08/17/2015 12:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_GUARDAR_PROC_EME_ENF_TEC_WEB]
@profesional char(3),
@paciente char(10),
@nombres varchar(120),
@codigo_proc char(8),
@tratamiento varchar(250),
@seguro char(3),
@zona_aplicacion varchar(2),
@nro_ticket varchar(25),
@estado int
AS BEGIN
    BEGIN TRY
		BEGIN TRAN
			BEGIN
			    SET NOCOUNT ON				
				-- Declara las variables que usaras en los chequeos error para cada instruccion.
				DECLARE @ErrorVar INT;
				DECLARE @RowCountVar INT;
				DECLARE @id_proce_web varchar(8);
				
				select @id_proce_web = dbo.FN_GENERAR_EMERGENCIA_PROC_WEB();
				
				INSERT INTO EMERGENCIA_PROC_WEB (ID_PROCE_WEB,PROFESIONAL,FECHA,HORA,FECHA_HORA_REG,PACIENTE,NOMBRES,CODIGO_PROC,
				TRATAMIENTO,SEGURO,ZONA_APLICACION,NRO_TICKET,ESTADO) VALUES(@id_proce_web,@profesional,GETDATE(),GETDATE(),GETDATE(),@paciente,
				@nombres,@codigo_proc,@tratamiento,@seguro,@zona_aplicacion,@nro_ticket,@estado);
				
				SELECT @ErrorVar = @@ERROR
					,@RowCountVar = @@ROWCOUNT;
				 
				IF @ErrorVar <> 0
				 BEGIN
					SELECT 0 AS ESTADO,N'ERROR: error '
						+ RTRIM(CAST(@ErrorVar AS NVARCHAR(10)))
						+ N' occurred.' AS MENSAJE;						
					RETURN 1;
				 END
				 
				-- Chequea row count. 
				IF @RowCountVar  = 0
				 BEGIN
					 SELECT 0 AS ESTADO,'NO SE HA PODIDO GUARDAR LOS DATOS, VERIFIQUE BIEN LOS CAMPOS.' AS MENSAJE;
					 RETURN 1;
				 END
				IF @RowCountVar  >= 1
				 BEGIN
					 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE;
					 RETURN 1;
				 END
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
