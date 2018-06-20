USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[HOSPITALIZACION_A_UCI]    Script Date: 06/29/2017 23:12:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 29/06/2017
-- Description:	HOSPI A UCI
-- =============================================
CREATE PROCEDURE [dbo].[HOSPITALIZACION_A_UCI] 
	-- Add the parameters for the stored procedure here
	@PACIENTE VARCHAR(20)
	 
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @lid_emergencia char(8) 
	set @lid_emergencia = (Select CONVERT(INT, (Max(Emergencia_Id)) + 1)  as Max From Emergencia Where Left(Emergencia_ID,2)= RIGHT(CONVERT(VARCHAR(4), YEAR(GETDATE())),2))
	set @lid_emergencia = (select case when @lid_emergencia IS null then RIGHT(CONVERT(VARCHAR(4), YEAR(GETDATE())),2) + '000001' else @lid_emergencia end) 
	DECLARE @lc_orden varchar(4) 
	set @lc_orden = (Select right('000' + convert(varchar(3), (convert(int, max(orden)) + 1)),3)   from emergencia where fecha = CONVERT(date, getdate(), 102))
	set @lc_orden = (select case when @lc_orden IS null then '001' else @lc_orden end) 
	declare @ldt_fecha datetime
	set @ldt_fecha = (select convert(datetime, convert(date, getdate(), 103)  + CAST('00:00:00' as datetime)))
	declare @lc_hora char(5)
	set @lc_hora = convert(char(5), convert(time, GETDATE(), 103))
	insert into [SIGSALUD].[dbo].[EMERGENCIA] (EMERGENCIA_ID, FECHA, HORA, ORDEN, PATERNO, MATERNO, NOMBRE, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,
	SEXO, ESTADO_CIVIL, DIRECCION, DISTRITO, TELEFONO1,TELEFONO2, TIPO_DOCUMENTO, DOCUMENTO, ACOMPANANTE, TIPO_DOCUMENTOA, DOCUMENTOA, CONSULTORIO, MOTIVO_EMERGENCIA, 
	SEGURO, OBSERVACION1, TIPO_CIEX1, CIEX1, TIPO_CIEX2, CIEX2, TIPO_CIEX3, CIEX3, DESTINO, OBSERVACION2, MEDICO,  ESTADO, USUARIO, PRE_AFILIACION, id_emergencia_ubicacion)
	select @lid_emergencia AS EMERGENCIA_ID,  @ldt_fecha as FECHA,@lc_hora as HORA, @lc_orden AS ORDEN, PATERNO, MATERNO, NOMBRE, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,
	 SEXO, ESTADO_CIVIL, DIRECCION, DISTRITO, TELEFONO1, TELEFONO2, TIPO_DOCUMENTO, DOCUMENTO,  'HOSPITALIZACION A UCI' AS ACOMPANANTE, '0' TIPO_DOCUMENTOA, '' DOCUMENTOA,
	  '1096' CONSULTORIO, '12' MOTIVO_EMERGENCIA, SEGURO, 'HOSPITALIZACION A UCI' AS OBSERVACION1, '0' TIPO_CIEX1, '0' CIEX1, '0' TIPO_CIEX2, '0' CIEX2,   '0' TIPO_CIEX3,
	   '0' CIEX3,    '0' DESTINO, '' OBSERVACION2, '0' MEDICO,  '2' AS ESTADO, 'USER-UCI' AS USUARIO, '' PRE_AFILIACION, 1 AS id_emergencia_ubicacion
	    from PACIENTE where PACIENTE = @PACIENTE
	    
	    
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


