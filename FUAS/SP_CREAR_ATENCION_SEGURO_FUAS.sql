USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_ATENCION_SEGURO_2]    Script Date: 04/23/2018 12:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[SP_GET_ATENCION_SEGURO_2](
@p_year  INT
) AS BEGIN

DECLARE @v_id_num_atencion VARCHAR(13)
DECLARE @v_opcion INT = 0

SELECT
@v_id_num_atencion = CONVERT(VARCHAR(13), CONVERT(BIGINT, MAX(NumAtencion))  + 1)
FROM ATENCION_SEGURO
WHERE LEFT(ATENCION_SEGURO_ID, 2) = '18'
AND (LEFT(NUMATENCION, 5) = '21017')

IF @v_id_num_atencion IS NULL AND @v_opcion = 0
BEGIN
	SET @v_id_num_atencion = '2101722055000'
END
ELSE IF @v_id_num_atencion IS NULL AND @v_opcion = 1
BEGIN
	SET @v_id_num_atencion = '2101420040648'
END

SELECT @v_id_num_atencion Max

END

