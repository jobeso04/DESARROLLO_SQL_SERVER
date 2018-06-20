USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_MODIFICAR_HISTORIA_EMERGENCIA]    Script Date: 03/29/2016 17:58:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[SP_MODIFICAR_HISTORIA_EMERGENCIA]
@emergencia_id char(8),
@prioridad varchar(11),
@examen_fisico TEXT,
@sintomas varchar(500),
@relato TEXT,
@tipo_ciex4 char(1),
@ciex4 char(10),
@tipo_ciex5 char(1),
@ciex5 char(10),
@tipo_ciex6 char(1),
@ciex6 char(10),
@tratamiento TEXT,
@medico char(8),
@estado char(1)
AS BEGIN
    SET NOCOUNT ON
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @hora_aten char(5);
	SET @hora_aten = CONVERT(char(5),GETDATE(),108);
	SET LANGUAGE Spanish;
	
	UPDATE EMERGENCIA SET PRIORIDAD=@prioridad,EXAMEN_FISICO=@examen_fisico,SINTOMAS=@sintomas,
	RELATO=@relato, TIPO_CIEX4=@tipo_ciex4,CIEX4=@ciex4,TIPO_CIEX5=@tipo_ciex5,CIEX5=@ciex5,TIPO_CIEX6=@tipo_ciex6,CIEX6=@ciex6,
	TRATAMIENTO=@tratamiento,MEDICO1=@medico,ESTADO=@estado
	WHERE EMERGENCIA_ID=@emergencia_id;
	
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
		 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE, HORA_ATEN, FECHA_ATENCION FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
		 RETURN 1;
	 END
END




GO

