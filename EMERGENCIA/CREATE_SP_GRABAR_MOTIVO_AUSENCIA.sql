USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GRABAR_MOTIVO_AUSENCIA]    Script Date: 08/12/2016 10:44:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



 
CREATE PROCEDURE [dbo].[SP_GRABAR_MOTIVO_AUSENCIA]
@emergencia_id char(8),
@usuario char(8),
@motivo_ausencia varchar(250),
@estado char(1)
AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	 
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	
	UPDATE EMERGENCIA SET USUARIO_FN_VITALES=@usuario, MOTIVO_AUSENCIA=upper(@motivo_ausencia), ESTADO=@estado WHERE EMERGENCIA_ID=@emergencia_id;
	
	select @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,PROFESIONAL,EMERGENCIA_ID,FECHA,HORA,FECHA_HORA_REG,TIPO_PROCESO,LUGAR,
	MOTIVO_AUSENCIA,ESTADO)
	VALUES (@id_eme_det_web, @usuario, @emergencia_id, GETDATE(), GETDATE(), GETDATE(), 'P15',@lugar,
	upper(@motivo_ausencia), 6);
	
	
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


