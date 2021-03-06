USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_GUARDAR_USUARIO_EMERGENCIA]    Script Date: 04/23/2018 15:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_GUARDAR_USUARIO_EMERGENCIA]
@dni char(8),
@clave varchar(30),
@nombre varchar(50),
@paterno varchar(50),
@materno varchar(50),
@unidad_organica varchar(20),
@sexo char(1),
@email varchar(90),
@cargo varchar(60),
@fecha_expiracion varchar(20),
@estado char(1),
@modulo varchar(50)
AS BEGIN
    SET NOCOUNT ON
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	SET LANGUAGE Spanish
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @nombres VARCHAR(60);

	SET @nombres = @paterno+' '+@materno+' '+@nombre;		
	INSERT INTO USUARIO_WEB (DNI,NOMBRES,CLAVE,USU_NOMBRE,USU_PATERNO,USU_MATERNO,UNIDAD_ORGANICA,SEXO,EMAIL,CARGO,FECHA_EXPIRACION,ESTADO,FOTO,FECHA_REGISTRO)
	VALUES (@dni,UPPER(@nombres),@clave,@nombre,@paterno,@materno,@unidad_organica,@sexo,@email,@cargo,@fecha_expiracion,@estado,case when @sexo = 'M'  then '55555555.jpg' else '44444444.jpg' end, GETDATE());
	
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
	IF @RowCountVar  > 0
	 BEGIN
		 SELECT 1 AS ESTADO,'FUE GUARDADO CORRECTAMENTE.' AS MENSAJE;
		 RETURN 1;
	 END
END