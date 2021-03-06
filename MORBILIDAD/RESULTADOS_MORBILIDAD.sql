 TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL]
  
 INSERT INTO [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] (diagnostico, sexo, n07d, n8d28d, n29d11m, n1a4a, n5a11a, a1214a, a1517a, j1829a, ad30a49a, ad50a59a, ad60a, fecharegistro)
  
 SELECT 'LESIONES MEDULARES' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'A' and sexo = 'F'
  UNION ALL
 SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'A' and sexo = 'M'

UNION ALL

 SELECT 'AMPUTADOS DE MIEMBRO SUPERIOR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'B' and sexo = 'F'
  UNION ALL
 SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'B' and sexo = 'M'

UNION ALL

SELECT 'AMPUTADOS DE MIEMBRO INFERIOR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'C' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'C' and sexo = 'M'
UNION ALL
SELECT 'ENFERMEDAD MUSCULAR Y UNION MIONEURAL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'D' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'D' and sexo = 'M'
 
UNION ALL
SELECT 'LESIONES DE NERVIO PERIFERICO ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'E' and sexo = 'F'
UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'E' and sexo = 'M'

UNION ALL
SELECT 'TRANSTORNOS DEL DESARROLLO DE LA FUNCION MOTRIZ ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'F' and sexo = 'F'
UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'F' and sexo = 'M'
UNION ALL
SELECT 'ENFERMEDAD ARTICULAR DEGENERATIVA  ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'G' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'G' and sexo = 'M'

UNION ALL
SELECT 'ENFERMEDAD CEREBRO VASCULAR  ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'H' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'H' and sexo = 'M'

UNION ALL
SELECT 'ENCEFALOPIA INFANTIL  ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'I' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'I' and sexo = 'M'

UNION ALL
SELECT 'ENFERMEDAD DE PARKINSON ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'J' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'J' and sexo = 'M'

UNION ALL
SELECT 'SINDROME DE DOWN ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'K' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'K' and sexo = 'M'
 
UNION ALL
SELECT 'TRANSTORNOS POSTURALES ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'L' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'L' and sexo = 'M'

UNION ALL
SELECT 'HIPOACUSIA Y SORDERA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'M' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'M' and sexo = 'M'


UNION ALL
SELECT 'BAJA VISION Y CEGUERA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'N' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'N' and sexo = 'M'

UNION ALL
SELECT 'SORDOMUDEZ: DISCAPACIDAD PARA OIR Y HABLAR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'O' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'O' and sexo = 'M'

UNION ALL
SELECT 'PARALISIS CEREBRAL INFANTIL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'P' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'P' and sexo = 'M'

UNION ALL
SELECT 'ENFERMEDAD CEREBRO VASCULAR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'Q' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'Q' and sexo = 'M'
UNION ALL

SELECT 'TRANSTORNOS DE APRENDIZAJE ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'R' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'R' and sexo = 'M'

UNION ALL
SELECT 'RETRASO MENTAL : LEVE, MODERA Y SEVERO ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'S' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'S' and sexo = 'M'

UNION ALL
SELECT 'TRANSTORNOS DEL ESPECTRO AUTISTA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'T' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'T' and sexo = 'M'

UNION ALL
SELECT 'OTROS TRANSTORNOS DE SALUD MENTAL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'U' and sexo = 'F'
  UNION ALL
SELECT  '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'U' and sexo = 'M'


UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET n07d = 0 where n07d is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET n8d28d = 0 where n8d28d is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET n29d11m = 0 where n29d11m is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET n1a4a = 0 where n1a4a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET n5a11a = 0 where n5a11a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET a1214a = 0 where a1214a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET a1517a = 0 where a1517a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET j1829a = 0 where j1829a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET ad30a49a = 0 where ad30a49a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET ad50a59a = 0 where ad50a59a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_TOTAL] SET ad60a = 0 where ad60a is null

select * from [SIGSALUD].[dbo].[TMP_ACTI_TOTAL]