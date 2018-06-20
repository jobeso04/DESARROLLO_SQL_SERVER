USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_DESTINO_PACIENTE_OBS]    Script Date: 07/12/2016 20:41:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GUARDAR_DESTINO_PACIENTE_OBS]
@emergencia_id char(8),
@medico char(4),
@observacion1 varchar(200),
@tipo_ciex1 char(1),
@ciex1 char(10),
@tipo_ciex2 char(1),
@ciex2 char(10),
@tipo_ciex3 char(1),
@ciex3 char(10),
@destino char(2),
@establecimiento varchar(100),
@estado char(1)
AS BEGIN
	
	SET NOCOUNT ON

	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	
	SET LANGUAGE Spanish;
	
	DECLARE @hora_sal char(5);
	DECLARE @fecha_salida varchar(10);
	
	SET @fecha_salida = CONVERT(varchar(10), GETDATE(), 121);
	SET @hora_sal = CONVERT(char(5),GETDATE(),108);
	
	UPDATE EMERGENCIA SET
	MEDICO =MEDICO_CODIGO_GINE,
	FECHA_SAL = @fecha_salida,
	HORA_SAL = @hora_sal,
	--OBSERVACION1 = @observacion1,
	TIPO_CIEX1 = @tipo_ciex1,
	CIEX1 = @ciex1,
	TIPO_CIEX2 = @tipo_ciex2,
	CIEX2 = @ciex2,
	TIPO_CIEX3 = @tipo_ciex3,
	CIEX3 = @ciex3,
	DESTINO=@destino,
	ESTADO = @estado,
	ESTABLECIMIENTO = @establecimiento,
	fecha_salida = GETDATE(),
	observacion_egreso = @observacion1
	WHERE EMERGENCIA_ID = @emergencia_id;
	
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
		 SELECT 
		 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE,
		 HORA_SAL,
		 FECHA_SAL
		 FROM EMERGENCIA
		 WHERE EMERGENCIA_ID = @emergencia_id;
		 RETURN 1;
	 END
	 
END




GO


