TRUNCATE TABLE [RCOMVEN].[dbo].[MPROVEEDOR]
INSERT INTO [RCOMVEN].[dbo].[MPROVEEDOR] (CTIPOIDENTIDAD, CTIPOPROVEEDOR, ctipodomicilio, cruc, crazonsocial, cpais, cestado, dfecharegistro, cusuario, dfechasistema,
   CAPELLIDOS, CNOMBRES, CDIRECCION)
 SELECT '6' AS CTIPOIDENTIDAD,  CASE WHEN SUBSTRING(CodRUC,1,1) = '1' THEN '1' ELSE '2' END AS CTIPOPROVEEDOR, '1' AS ctipodomicilio,
  CodRuc as cruc,  NomRuc as crazonsocial, '9589' as cpais, '1' as cestado, GETDATE() as dfecharegisro, '32921099' as cusuario, 
 GETDATE() as dfechasistema, '' AS CAPELLIDOS, '' AS CNOMBRES, '' AS CDIRECCION FROM [RCOMVEN].[dbo].[Proveedor] 