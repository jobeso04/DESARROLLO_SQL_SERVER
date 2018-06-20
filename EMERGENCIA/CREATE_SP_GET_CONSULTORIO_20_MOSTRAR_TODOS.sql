USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_CONSULTORIO_20]    Script Date: 04/24/2017 12:00:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_GET_CONSULTORIO_20]
AS BEGIN

/* @MODULO: Emergencia
 *
 */

SELECT
consultorio,
SUBSTRING(nombre, 1, CHARINDEX(' ', nombre)) nombre
FROM CONSULTORIO
WHERE TIPO = 'E' and CONSULTORIO not in ('4050', '4060')

END



GO


