USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_SET_EMERGENCIA_17]    Script Date: 07/07/2016 09:29:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER PROCEDURE [dbo].[SP_SET_EMERGENCIA_17]
@p_id_emergencia char(8),
@p_id_profesional varchar(8),
@p_detalle TEXT,
@p_string VARCHAR(500),
@check1 varchar(10)
AS BEGIN
	
SET NOCOUNT ON
	
DECLARE @v_id_eme_det_web VARCHAR(8)
DECLARE @v_id_paciente VARCHAR(10)	
DECLARE @v_lugar CHAR(5)
DECLARE @v_string_sql NVARCHAR(550)

IF RTRIM(LTRIM(@p_string)) <> ''
BEGIN
	CREATE TABLE #TEMP_SET_EMERGENCIA_17 (
		IdEmergencia VARCHAR(8),
		IdProcedimientoEnfermeria INT NOT NULL,
		Cantidad INT NOT NULL,
		CONSTRAINT un_temp_set_emergencia_17 UNIQUE (IdEmergencia, IdProcedimientoEnfermeria)
	)
END

BEGIN TRY

	BEGIN TRAN
	
		SELECT
		@v_id_paciente = PACIENTE,
		@v_lugar = ESTADO_PACIENTE
		FROM EMERGENCIA
		WHERE EMERGENCIA_ID = @p_id_emergencia;

		SELECT @v_id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB()

		INSERT INTO EMERGENCIA_DET_WEB (
		ID_EME_DET_WEB,
		EMERGENCIA_ID,
		PACIENTE,
		PROFESIONAL,
		PROCEDIMIENTO,
		DETALLE,
		LUGAR,
		TIPO_PROCESO,
		FECHA,
		HORA,
		FECHA_HORA_REG,
		ESTADO, ES_UCI
		) VALUES (
		@v_id_eme_det_web,
		@p_id_emergencia,
		@v_id_paciente,
		@p_id_profesional,
		'',
		@p_detalle,
		@v_lugar,
		'P02',
		GETDATE(),
		GETDATE(),
		GETDATE(),
		1, @check1)
		
		IF RTRIM(LTRIM(@p_string)) <> ''
		BEGIN
			SET @v_string_sql = 'INSERT INTO #TEMP_SET_EMERGENCIA_17 VALUES ' + @p_string

			EXEC sp_executesql @v_string_sql

			INSERT INTO EmergenciaDetalleProcedimiento (IdEmergenciaDetalle, IdProcedimientoEnfermeria, Cantidad)
			SELECT @v_id_eme_det_web, IdProcedimientoEnfermeria, Cantidad FROM #TEMP_SET_EMERGENCIA_17
		END

	COMMIT

	SELECT 1 success, 'Nota de Enfermería registrada correctamente.' msg

END TRY
BEGIN CATCH
	ROLLBACK TRAN
	SELECT 0 success, 'Error al registrar Nota de Enfermería.' msg
END CATCH

END




GO


