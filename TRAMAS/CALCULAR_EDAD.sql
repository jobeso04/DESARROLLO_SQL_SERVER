USE [SIGSALUD]
GO

/****** Object:  UserDefinedFunction [dbo].[FN_CALCULAR_EDAD]    Script Date: 10/04/2015 11:46:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FN_CALCULAR_EDAD](@fecha_nacimiento VARCHAR(10))
returns varchar(10)
AS
BEGIN
DECLARE @edad VARCHAR(10), @print_anho_edad CHAR(4), @print_mes_edad CHAR(3), @print_dia_edad CHAR(3);
DECLARE @anho_fn int, @anho_hoy int, @anho_edad int;
DECLARE @mes_fn int, @mes_hoy int, @mes_edad int;
DECLARE @dia_fn int, @dia_hoy int, @dia_edad int;
SET @dia_fn = SUBSTRING(@fecha_nacimiento,1,2);
SET @mes_fn = SUBSTRING(@fecha_nacimiento,4,2);
SET @anho_fn = SUBSTRING(@fecha_nacimiento,7,4);
SET @dia_hoy = DAY(GETDATE());
SET @mes_hoy = MONTH(GETDATE());
SET @anho_hoy = YEAR(GETDATE());
SET @anho_edad = @anho_hoy - @anho_fn;
IF(@mes_hoy < @mes_fn)
 BEGIN
	SET @anho_edad = @anho_edad - 1;
 END
SET @mes_edad = (12 - @mes_fn) + @mes_hoy;
IF(@mes_edad = 12)
 BEGIN
	SET @mes_edad = 0;
 END
ELSE IF(@mes_edad > 12)
 BEGIN
	SET @mes_edad = @mes_hoy - @mes_fn;
 END
IF(@dia_fn < @dia_hoy)
 BEGIN
	SET @dia_edad = @dia_hoy - @dia_fn;
 END
ELSE IF(@dia_fn = @dia_hoy)
 BEGIN
	SET @dia_edad = 0;
 END
ELSE IF(@dia_fn > @dia_hoy)
 BEGIN
	SET @mes_edad = @mes_edad - 1;
	SET @dia_edad = 31 - (@dia_fn - @dia_hoy);	
 END
--FORMATO DE IMPRESION
SET @print_anho_edad = RIGHT('000' + Ltrim(Rtrim(@anho_edad)),3)+'a';
SET @print_mes_edad = RIGHT('00' + Ltrim(Rtrim(@mes_edad)),2)+'m';
SET @print_dia_edad = RIGHT('00' + Ltrim(Rtrim(@dia_edad)),2)+'d';
SET @edad = @print_anho_edad+@print_mes_edad+@print_dia_edad;
RETURN @edad;
END
GO


