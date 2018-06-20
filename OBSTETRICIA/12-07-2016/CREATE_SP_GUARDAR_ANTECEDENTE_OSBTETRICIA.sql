USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_ANTECEDENTES_OBSTETRICIA]    Script Date: 07/12/2016 20:50:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





 
CREATE PROCEDURE [dbo].[SP_GUARDAR_ANTECEDENTES_OBSTETRICIA]
@emergencia_id char(8),
@gpobs VARCHAR(50),
@furobs VARCHAR(10),
@fppobs VARCHAR(10),
@egumobs VARCHAR(50),
@egecoobs VARCHAR(50),
@usuario char(8),
@medico char(8),
@estado char(1)
AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	 
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	UPDATE EMERGENCIA SET GPOBS=@gpobs, FUROBS=@furobs, FPPOBS=@fppobs, EGUMOBS=@egumobs, EGECOOBS=@egecoobs, USUARIO_ANT_OBSTETRICIA=@medico,
		 ESTADO=@estado, USUARIO_FN_VITALES = @medico WHERE EMERGENCIA_ID=@emergencia_id;
	select @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,PROFESIONAL,EMERGENCIA_ID,FECHA,HORA,FECHA_HORA_REG,TIPO_PROCESO,LUGAR,
	AHORA_PROFESIONAL,ESTADO) VALUES (@id_eme_det_web, @medico, @emergencia_id, GETDATE(), GETDATE(), GETDATE(), 'P13',@lugar,
	@medico, 1);

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
	IF @RowCountVar  = 1
	 BEGIN
		 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE;
		 RETURN 1;
	 END
END







GO


