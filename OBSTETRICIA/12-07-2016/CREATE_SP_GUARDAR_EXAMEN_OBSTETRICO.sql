USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_EXAMEN_OBSTETRICO]    Script Date: 07/12/2016 20:52:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




 
CREATE PROCEDURE [dbo].[SP_GUARDAR_EXAMEN_OBSTETRICO]
@emergencia_id char(8),
@au VARCHAR(3),
@presentacion VARCHAR(2),
@lcf VARCHAR(5),
@dilatacion VARCHAR(3),
@incorporacion VARCHAR(4),
@altura_presentacion VARCHAR(2),
@membranas VARCHAR(2),
@estado char(1),
@presentacion2 varchar(3),
@lcf2 varchar(3),
@tv varchar(3),
@medico_codigo_gine varchar(3)


AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	 
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	declare @qtiende char(8);
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	select @qtiende = usuario_fn_vitales FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	UPDATE EMERGENCIA SET ALTURA_UTERINA=@au, PRESENTACION=@presentacion, LCF=@lcf, DILATACION=@dilatacion, INCORPORACION = @incorporacion,
	ALTURA_PRESENTACION=@altura_presentacion, MEMBRANAS=@membranas, USUARIO_EXAMEN_OBSTETRICO=@qtiende, MEDICO1 = @medico_codigo_gine, QUIEN_ATIENDE = @medico_codigo_gine, ESTADO=@estado, PRESENTACION2 = @presentacion2, LCF2=@lcf2, TV=@tv, MEDICO_CODIGO_GINE=@medico_codigo_gine WHERE EMERGENCIA_ID=@emergencia_id;
		
	select @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,PROFESIONAL,EMERGENCIA_ID,FECHA,HORA,FECHA_HORA_REG,TIPO_PROCESO,LUGAR,
	AHORA_PROFESIONAL,ESTADO) VALUES (@id_eme_det_web, @qtiende , @emergencia_id, GETDATE(), GETDATE(), GETDATE(), 'P14',@lugar,
	@medico_codigo_gine, 1);

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


