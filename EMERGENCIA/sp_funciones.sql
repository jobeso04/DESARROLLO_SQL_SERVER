USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_FUNSIONES_VITALES]    Script Date: 07/22/2015 09:03:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_GUARDAR_FUNSIONES_VITALES]
@emergencia_id char(8),
@temperatura float,
@presion float,
@presiond float,
@pulso float,
@fr float,
@peso float,
@fc float,
@sat_ox float,
@usuario char(8),
@medico char(8),
@estado char(1),
@servicio varchar(150)

AS BEGIN

	SET NOCOUNT ON

	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	
	UPDATE EMERGENCIA SET TEMPERATURA=@temperatura,PRESION=@presion,PRESIOND=@presiond,PULSO=@pulso,FR=@fr,PESO=@peso,FC=@fc,SAT_OX=@sat_ox,USUARIO_FN_VITALES=@usuario,QUIEN_ATIENDE= @medico, ESTADO=@estado, CONSULTORIO_SERVICIO = @servicio WHERE EMERGENCIA_ID=@emergencia_id;
	
	select @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,PROFESIONAL,EMERGENCIA_ID,FECHA,HORA,FECHA_HORA_REG,TIPO_PROCESO,LUGAR,
	AHORA_PROFESIONAL,ESTADO, CONSULTORIO_SERVICIO) VALUES (@id_eme_det_web, @usuario, @emergencia_id, GETDATE(), GETDATE(), GETDATE(), 'P06',@lugar,
	@medico, 1, @servicio);
	
	
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


