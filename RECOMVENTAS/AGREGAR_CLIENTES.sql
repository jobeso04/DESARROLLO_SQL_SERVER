TRUNCATE TABLE [RCOMVEN].[dbo].[MCLIENTES]
INSERT INTO [RCOMVEN].[dbo].[MCLIENTES] (ctipoidentidad, ctipocliente, ctipodomicilio, cruc, crazonsocial,  cpais, cestado, dfecharegistro,
          cusuario, dfechasistema, capellidos, cnombres, cdireccion)
 SELECT '6' AS CTIPOIDENTIDAD,  CASE WHEN SUBSTRING(CodRUC,1,1) = '1' THEN '1' ELSE '2' END AS ctipocliente, '1' AS ctipodomicilio,
  CodRuc as cruc,  UPPER(NomRuc) as crazonsocial, '9589' as cpais, '1' as cestado, GETDATE() as dfecharegisro, '32921099' as cusuario, 
 GETDATE() as dfechasistema, '' AS CAPELLIDOS, '' AS CNOMBRES, '' AS CDIRECCION FROM [RCOMVEN].[dbo].[Cliente]