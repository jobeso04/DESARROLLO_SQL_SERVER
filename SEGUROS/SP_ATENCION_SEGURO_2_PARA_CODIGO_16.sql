USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_ATENCION_SEGURO_2]    Script Date: 01/29/2016 08:41:54 ******/
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
WHERE LEFT(ATENCION_SEGURO_ID, 2) = '16'
AND (LEFT(NUMATENCION, 5) = '21016')

IF @v_id_num_atencion IS NULL AND @v_opcion = 0
BEGIN
	SET @v_id_num_atencion = '2101625100000'
END
ELSE IF @v_id_num_atencion IS NULL AND @v_opcion = 1
BEGIN
	SET @v_id_num_atencion = '2101420040648'
END

SELECT @v_id_num_atencion Max

END


GO


