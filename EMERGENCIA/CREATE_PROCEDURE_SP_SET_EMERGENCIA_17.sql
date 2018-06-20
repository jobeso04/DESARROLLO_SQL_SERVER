USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_SET_EMERGENCIA_17]    Script Date: 02/01/2017 14:44:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_SET_EMERGENCIA_17]
@p_id_emergencia char(8),
@p_id_profesional varchar(8),
@p_detalle TEXT,
@p_string VARCHAR(500),
@p_agregar_uci VARCHAR(2)
AS BEGIN
	
SET NOCOUNT ON
	
DECLARE @v_id_eme_det_web VARCHAR(8)
DECLARE @v_id_paciente VARCHAR(10)	
DECLARE @v_lugar CHAR(5)
DECLARE @v_string_sql NVARCHAR(550)
DECLARE @v_agregar_uci VARCHAR(2)


IF RTRIM(LTRIM(@p_string)) <> ''
BEGIN
	CREATE TABLE #TEMP_SET_EMERGENCIA_17 (
		IdEmergencia VARCHAR(8),
		IdProcedimientoEnfermeria INT NOT NULL,
		Cantidad INT NOT NULL,
		agregar_uci varchar(2),
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
		ESTADO, AGREGAR_UCI
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
		1, @p_agregar_uci)
		
		IF RTRIM(LTRIM(@p_string)) <> ''
		BEGIN
			SET @v_string_sql = 'INSERT INTO #TEMP_SET_EMERGENCIA_17 VALUES ' + @p_string

			EXEC sp_executesql @v_string_sql

			INSERT INTO EmergenciaDetalleProcedimiento (IdEmergenciaDetalle, IdProcedimientoEnfermeria, Cantidad, agregar_uci)
			SELECT @v_id_eme_det_web, IdProcedimientoEnfermeria, Cantidad, agregar_uci FROM #TEMP_SET_EMERGENCIA_17
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


