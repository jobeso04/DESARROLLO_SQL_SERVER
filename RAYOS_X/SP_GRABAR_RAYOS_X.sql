USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_RAYOSX]    Script Date: 08/24/2015 15:12:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_RAYOSX]
@rayosx INT,
@numero INT,
@pagoid CHAR(8),
@fecha VARCHAR(10),
@programado CHAR(1),
@fecha_programado VARCHAR(10),
@seguro CHAR(3),
@paciente VARCHAR(100),
@telefono VARCHAR(10),
@tipo_edad CHAR(1),
@edad INT,
@sexo CHAR(1),
@profesional VARCHAR(75),
@ups CHAR(3),
@his_codservicio CHAR(6),
@his_nomservicio VARCHAR(30),
@b18_24 INT,
@b24_30 INT,
@b30_40 INT,
@b14_14 INT,
@b14_17 INT,
@m18_24 INT,
@m24_30 INT,
@m30_40 INT,
@m14_14 INT,
@m14_17 INT,
@observacion VARCHAR(500),
@exonerado VARCHAR(10),
@informe BIT,
@entregado BIT,
@familiar VARCHAR(100),
@responsable VARCHAR(60),
@usuario VARCHAR(15),
@DB8_10 INT,
@DB14_17 INT,
@DB14_14 INT,
@DB10_12 INT,
@DB11_14 INT,
@DM8_10 INT,
@DM14_17 INT,
@DM14_14 INT,
@DM10_12 INT,
@DM11_14 INT,
@DB24_30 INT,
@DM24_30 INT


AS BEGIN

	SET NOCOUNT ON;

	BEGIN TRY
		BEGIN TRAN
			DECLARE @id INT;
			
			SET LANGUAGE Spanish
			
			IF EXISTS(SELECT RAYOSX FROM RAYOSX WHERE RAYOSX=@rayosx)
				BEGIN
				UPDATE RAYOSX SET FECHA=@fecha,NUMERO=@numero,PAGOID=@pagoid,PROGRAMADO=@programado,FECHA_PROGRAMADO=@fecha_programado,SEGURO=@seguro,
				NOMBRES=@paciente,TELEFONO=@telefono,TIPO_EDAD=@tipo_edad,EDAD=@edad,SEXO=@sexo,PROFESIONAL=@profesional,UPS=@ups,
				HIS_CODSERVICIO=@his_codservicio,HIS_NOMSERVICIO=@his_nomservicio,B18_24=@b18_24,
				B24_30=@b24_30,B30_40=@b30_40,B14_14=@b14_14,B14_17=@b14_17,M18_24=@m18_24,M24_30=@m24_30,M30_40=@m30_40,M14_14=@m14_14,
				M14_17=@m14_17,OBSERVACION=@observacion,EXONERADO=@exonerado,INFORME=@informe,ENTREGADO=@entregado,FAMILIAR=@familiar,
				RESPONSABLE=@responsable,USUARIO=@usuario, DB8_10 = @DB8_10, DB14_17 = @DB14_17, DB14_14 = @DB14_14, DB10_12 = @DB10_12, DB11_14 = @DB11_14, DB24_30 = @DB24_30,
				DM8_10 = @DM8_10, DM14_17 = @DM14_17, DM14_14 = @DM14_14, DM10_12 = @DM10_12, DM11_14 = @DM11_14, DM24_30 = @DM24_30  
				WHERE RAYOSX=@rayosx;
				
				SELECT @rayosx as ID;
				
				END
			ELSE
				BEGIN
				INSERT INTO RAYOSX (NUMERO,PAGOID,FECHA,PROGRAMADO,FECHA_PROGRAMADO,SEGURO,NOMBRES,TELEFONO,TIPO_EDAD,EDAD,SEXO,PROFESIONAL,UPS,
				HIS_CODSERVICIO,HIS_NOMSERVICIO,B18_24,B24_30,B30_40,B14_14,B14_17,M18_24,M24_30,M30_40,M14_14,M14_17,OBSERVACION,EXONERADO,INFORME,ENTREGADO,
				FAMILIAR,RESPONSABLE,USUARIO,  DB8_10, DB14_17, DB14_14, DB10_12, DB11_14, DB24_30, DM8_10, DM14_17, DM14_14, DM10_12, DM11_14, DM24_30) 
				VALUES 
				(@numero,@pagoid,@fecha,@programado,@fecha_programado,@seguro,@paciente,@telefono,@tipo_edad,@edad,@sexo,@profesional,@ups,@his_codservicio,@his_nomservicio,
				@b18_24,@b24_30,@b30_40,@b14_14,@b14_17,@m18_24,@m24_30,@m30_40,@m14_14,@m14_17,@observacion,@exonerado,@informe,@entregado,@familiar,@responsable,@usuario,
				@DB8_10, @DB14_17, @DB14_14, @DB10_12, @DB11_14, @DB24_30, @DM8_10, @DM14_17, @DM14_14, @DM10_12, @DM11_14, @DM24_30);
			
				SET @id = SCOPE_IDENTITY();
			
				SELECT @id as ID;
				END
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SELECT @@ERROR as ID
	END CATCH
END




