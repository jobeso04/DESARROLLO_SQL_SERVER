USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_CAMBIAR_ESTADO]    Script Date: 10/06/2016 18:39:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






 
CREATE PROCEDURE [dbo].[SP_CAMBIAR_ESTADO]
@emergencia_id char(8),
@usuario char(8),
@estado_seleccion varchar(1)
AS BEGIN
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	 
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);
	DECLARE @lugar char(5);
	
	UPDATE EMERGENCIA SET estado = @estado_seleccion WHERE EMERGENCIA_ID=@emergencia_id;
	
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


