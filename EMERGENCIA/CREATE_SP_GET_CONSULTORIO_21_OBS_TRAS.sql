USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_CONSULTORIO_21_OBS_TRAS]    Script Date: 04/25/2017 11:14:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[SP_GET_CONSULTORIO_21_OBS_TRAS]
AS BEGIN

/* @MODULO: Emergencia
 *
 */

SELECT
consultorio,
SUBSTRING(nombre, 1, CHARINDEX(' ', nombre)) nombre
FROM CONSULTORIO
WHERE TIPO = 'E' and CONSULTORIO IN ('4050', '4060')

END



GO


