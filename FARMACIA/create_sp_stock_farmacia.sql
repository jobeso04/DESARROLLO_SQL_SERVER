USE [SIGSALUD]
GO

/****** Object:  StoredProcedure [dbo].[SP_GET_STOCK_FARMACIA_CENARE]    Script Date: 10/16/2017 18:37:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		UEI
-- Create date: 15/10/2017
-- Description:	OBTIENE TABLA CENARE
-- =============================================
CREATE PROCEDURE [dbo].[SP_GET_STOCK_FARMACIA_CENARE] 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	TRUNCATE TABLE  [SIGSALUD].[dbo].[TCENARE_PRE]
INSERT INTO [SIGSALUD].[dbo].[TCENARE_PRE]([ITEM],[NOMBRE],[CODIGO_MED],[STOCK_FIN],[STOCK_FIN1])
  SELECT  ITEM, UPPER(nombre) NOMBRE, SISMED AS CODIGO_MED, 
        MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) + 
         MAX( CASE almacen WHEN 'C' THEN stock ELSE 0 END )as  STOCK_FIN,
                   MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) STOCK_FIN1 
                        FROM [SIGSALUD].[dbo].[V_STOCK] GROUP BY item, nombre, sismed
TRUNCATE TABLE  [SIGSALUD].[dbo].[TCENARE_POST]                        
INSERT INTO [SIGSALUD].[dbo].[TCENARE_POST]([CODIGO_EJE],[CODIGO_PRE],[ITEM],[NOMBRE],[CODIGO_MED],[PRECIO],[STOCK_FIN],[STOCK_FIN1])
SELECT '1138' CODIGO_EJE,  '05947' CODIGO_PRE, M.ITEM,  M.NOMBRE, M.CODIGO_MED, F.PRECIO, M.STOCK_FIN, M.STOCK_FIN1 from (SELECT * FROM [SIGSALUD].[dbo].[TCENARE_PRE]) M, (SELECT P.ITEM, P.Precio FROM [SIGSALUD].[dbo].[PRECIO] P 
INNER JOIN [SIGSALUD].[dbo].[ITEM] I ON I.Item=P.Item INNER JOIN [SIGSALUD].[dbo].[STOCK] S ON S.Item=P.Item 
WHERE p.fecha=(select max(fecha) from [SIGSALUD].[dbo].[PRECIO] X where P.item=X.item group by item) 
and p.IDRECORD=(select max(X.IDRECORD) from [SIGSALUD].[dbo].[PRECIO] X where X.Fecha=P.Fecha and P.item=X.item group by item)
 AND Almacen='F' AND Modulo='FARMACIA') F  WHERE  M.ITEM = F.ITEM
update [SIGSALUD].[dbo].[TCENARE_POST] set FECHA_VENCIMIENTO = convert(varchar(10), x.fecha_vencimiento, 103)
FROM [SIGSALUD].[dbo].[TCENARE_POST] join (SELECT item, FECHA_VENCIMIENTO FROM INGRESOD where FECHA_VENCIMIENTO >= GETDATE()) as x on TCENARE_POST.ITEM = x.ITEM
update [SIGSALUD].[dbo].[TCENARE_POST]  set FECHA_VENCIMIENTO = '' where FECHA_VENCIMIENTO is null



END

GO


