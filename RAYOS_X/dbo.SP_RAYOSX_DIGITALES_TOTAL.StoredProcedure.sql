USE [SIGSALUD]
GO
/****** Object:  StoredProcedure [dbo].[SP_RAYOSX_DIGITALES_TOTAL]    Script Date: 08/25/2015 14:42:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		UEIT
-- Create date: 24/08/2015
-- Description:	Total de Placas Digitales
-- =============================================
CREATE PROCEDURE [dbo].[SP_RAYOSX_DIGITALES_TOTAL] 
	-- Add the parameters for the stored procedure here
	@inicio char(10), 
	@fin char(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOCOUNT ON;
	SET LANGUAGE SPANISH 

	SELECT 'TOTAL' AS PELICULAST, 
	ISNULL(SUM(DB8_10+DB14_17+DB14_14+DB10_12+DB11_14+DB24_30+DM8_10+DM14_17+DM14_14+DM10_12 + DM11_14 + DM24_30),0) AS TOTALT,
	ISNULL(SUM(DB8_10+DM8_10),0) AS D8_10,ISNULL(SUM(DB14_17+DM14_17),0) AS D14_17,ISNULL(SUM(DB14_14+DM14_14),0) AS D14_14,
	ISNULL(SUM(DB10_12+DM10_12),0) AS D10_12,ISNULL(SUM(DB11_14+DM11_14),0) AS D11_14, ISNULL(SUM(DB24_30+DM24_30),0) AS D24_30 FROM RAYOSX WHERE FECHA BETWEEN @inicio AND @fin
	
	UNION ALL 

	SELECT 'PELICULAS CONFORMES' AS PELICULAST, 
	ISNULL(SUM(DB8_10+DB14_17+DB14_14+DB10_12+DB11_14+DB24_30),0) AS TOTALT,
	ISNULL(SUM(DB8_10),0) AS D8_10, ISNULL(SUM(DB14_17),0) AS D14_17,ISNULL(SUM(DB14_14),0) AS D14_14,ISNULL(SUM(DB10_12),0) AS D10_12,
	ISNULL(SUM(DB11_14),0) AS D11_14, ISNULL(SUM(DB24_30),0) AS D24_30 FROM RAYOSX WHERE FECHA BETWEEN @inicio AND @fin
	
	UNION ALL 
	
	SELECT 'PELICULAS FALLADAS' AS PELICULAST, 
	ISNULL(SUM(DM8_10+DM14_17+DM14_14+DM10_12+DM11_14+DM24_30),0) AS TOTALT,
	ISNULL(SUM(DM8_10),0) AS D8_10,ISNULL(SUM(DM14_17),0) AS D14_17,ISNULL(SUM(DM14_14),0) AS D14_14,ISNULL(SUM(DM10_12),0) AS D10_12,
	ISNULL(SUM(DM11_14),0) AS D11_14, ISNULL(SUM(DM24_30),0) AS D24_30  FROM RAYOSX
	WHERE FECHA BETWEEN @inicio AND @fin
END
GO
