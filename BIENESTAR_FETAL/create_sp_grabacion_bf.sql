USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GRABACION_BF]    Script Date: 09/17/2017 21:24:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 18/09/2017
-- Description:	GRABACION DE BF
-- =============================================
CREATE PROCEDURE [dbo].[SP_GRABACION_BF] 
	-- Add the parameters for the stored procedure here
	@fecha varchar(10), @hora varchar(10),@paciente varchar(11),@historia varchar(10),@nombres varchar(250),@edad varchar(3),
	@gestacion varchar(3), @puerperio varchar(4),	@fur varchar(10),	@fpp varchar(10),	@edad_gestacion varchar(2),
	@edad_gestacion_eco varchar(2), @altura_uterina varchar(2),@leopold varchar(3), @tiempo_ayuno varchar(50), @medicacion_previa varchar(250),
	@obstetra varchar(3),@usuario varchar(10)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET LANGUAGE Spanish
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;

    -- Insert statements for procedure here
	INSERT INTO [SIGSALUD].[dbo].[BIENESTAR_FETAL]([ESTADO],[FECHA],[HORA],[PACIENTE],[HISTORIA],[NOMBRES],[EDAD],[GESTACION],[PUERPERIO],[FUR],[FPP],[EDAD_GESTACION],[EDAD_GESTACION_ECO],[ALTURA_UTERINA],[LEOPOLD],[TIEMPO_AYUNO],[MEDICACION_PREVIA],[OBSTETRA],[FECHAREGISTRO],[USUARIO])
      VALUES ('2', @fecha, @hora, @paciente, @historia, @nombres, @edad,@gestacion, @puerperio, @fur, @fpp, @edad_gestacion, @edad_gestacion_eco, @altura_uterina, @leopold, @tiempo_ayuno, @medicacion_previa, @obstetra, GETDATE(), @usuario)
      
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
		 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE' AS MENSAJE;
		 RETURN 1;
	 END
	
	
END

GO


