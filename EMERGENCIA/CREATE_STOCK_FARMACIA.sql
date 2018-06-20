USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[STOCK_FARMACIA]    Script Date: 02/06/2017 16:34:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[STOCK_FARMACIA]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT item, UPPER(nombre) NOMBRE, UPPER(presentacion) PRESENTACION,sismed,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) stock1, 
       MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) stock2,
       MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) as  stocktotal
 FROM v_stock  GROUP BY item, nombre, PRESENTACION, sismed  order by NOMBRE asc
  
END

GO


