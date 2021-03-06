USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_EMERGENCIA_19_OBS]    Script Date: 04/25/2017 11:17:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GET_EMERGENCIA_19_OBS](
@fecha VARCHAR(10),
@consultorio VARCHAR(10),
@paciente VARCHAR(80),
@dni VARCHAR(8))
AS BEGIN

SET LANGUAGE Spanish

DECLARE @abreviatura VARCHAR(5)
DECLARE @estado CHAR(1)
DECLARE @medico CHAR(3)
DECLARE @flat_mispacientes INT = 1
DECLARE @date_from VARCHAR(10) = CONVERT(VARCHAR(10), DATEADD(DAY, -90, @fecha), 103)


SELECT T1.emergencia_id, T1.estado, T1.nombres, CONVERT(VARCHAR(10), T1.FECHA, 103) fecha, T1.hora, T1.orden, T2.historia, T1.sexo, T3.nombre seguro,
  SUBSTRING(T4.nombre, 1, CHARINDEX(' ', T4.nombre))  consultorio  FROM EMERGENCIA T1
    LEFT JOIN PACIENTE T2 ON T2.PACIENTE = T1.PACIENTE  LEFT JOIN SEGURO T3 ON T3.SEGURO = T1.SEGURO LEFT JOIN CONSULTORIO T4 ON T4.CONSULTORIO = T1.CONSULTORIO
     WHERE T1.FECHA BETWEEN @date_from AND @fecha  AND T1.CONSULTORIO in ('4050', '4060') and ESTADO in ('3', '4') ORDER BY T1.fecha desc
END





GO


