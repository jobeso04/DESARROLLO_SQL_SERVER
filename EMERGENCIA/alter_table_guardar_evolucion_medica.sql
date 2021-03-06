USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_SET_EMERGENCIA_19]    Script Date: 05/24/2016 16:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[SP_SET_EMERGENCIA_19]
@profesional VARCHAR(8),
@detalle TEXT,
@estado INT,
@lugar VARCHAR(20),
@p_id_emergencia_evolucion INT,
@emergencia_id CHAR(8),
@paciente CHAR(10),
@factor1 varchar(80),
@factor2 varchar(80),
@factor3 varchar(80)

AS BEGIN
	
SET NOCOUNT ON
SET LANGUAGE Spanish

DECLARE @id_eme_det_web varchar(8)
DECLARE @v_validate INT = 1

BEGIN TRY
	BEGIN TRAN

		UPDATE EMERGENCIA SET 
		ESTADO_PACIENTE = @lugar,
		id_emergencia_ubicacion = @p_id_emergencia_evolucion
		WHERE EMERGENCIA_ID = @emergencia_id;

		IF @@ROWCOUNT = 0
		BEGIN
			SET @v_validate = 0 
		END

		SELECT @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();

		INSERT INTO EMERGENCIA_DET_WEB (
		ID_EME_DET_WEB,
		PROFESIONAL,
		FECHA,
		HORA,
		FECHA_HORA_REG,
		EMERGENCIA_ID,
		DETALLE,
		LUGAR,
		TIPO_PROCESO,
		ESTADO,
		PACIENTE,
		FACTOR1,
		FACTOR2,
		FACTOR3
		) VALUES (
		@id_eme_det_web,
		@profesional,
		GETDATE(),
		GETDATE(),
		GETDATE(),
		@emergencia_id,
		@detalle,
		@lugar,
		'P01',
		@estado,
		@paciente,
		@factor1,
		@factor2,
		@factor3)
	
	IF @v_validate = 1
	BEGIN
		COMMIT TRAN
		SELECT 1 success, 'Evolución registrada correctamente.' msg	
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		SELECT 0 success, 'Error al registrar evolución.' msg	
	END
	
END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT 0 success, 'Error al registrar evolución.' msg
END CATCH
	
END



