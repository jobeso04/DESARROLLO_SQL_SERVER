USE [SIGSALUD]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GENERAR_EMERGENCIA_DET_WEB]    Script Date: 09/29/2015 09:44:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[FN_GENERAR_EMERGENCIA_DET_WEB]()
returns varchar(8)
AS
BEGIN
DECLARE @indice INTEGER;
DECLARE @anho INTEGER;
DECLARE @anho_hoy VARCHAR(4);
DECLARE @codigo VARCHAR(8);
SET @anho_hoy = SUBSTRING(CONVERT(CHAR,YEAR(GETDATE())),3,2);
SELECT @indice = ISNULL(SUBSTRING(MAX(ID_EME_DET_WEB),3,8),0) FROM EMERGENCIA_DET_WEB WHERE ID_EME_DET_WEB like @anho_hoy+'%';
SELECT @anho = SUBSTRING(MAX(ID_EME_DET_WEB),1,2) FROM EMERGENCIA_DET_WEB;
if(@anho=@anho_hoy)
	SET @indice = @indice + 1;
else
	SET @indice = 1;
SET @codigo = @anho_hoy + RIGHT('000000' + Ltrim(Rtrim(@indice)),6)	
RETURN @codigo;

END