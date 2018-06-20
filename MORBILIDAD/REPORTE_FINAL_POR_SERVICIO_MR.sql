/* MEDICINA REHABILITACION */

TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_ACTI_MR]
INSERT INTO [SIGSALUD].[dbo].[TMP_ACTI_MR]
           ([servicio]
           ,[diagnostico]
           ,[sexo]
           ,[n07d]
           ,[n8d28d]
           ,[n29d11m]
           ,[n1a4a]
           ,[n5a11a]
           ,[a1214a]
           ,[a1517a]
           ,[j1829a]
           ,[ad30a49a]
           ,[ad50a59a]
           ,[ad60a]
           ,[fecharegistro])


SELECT 'MR' AS SERVICIO, 'LESIONES MEDULARES' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'A' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
 SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'A' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
UNION ALL
 SELECT 'MR' AS SERVICIO,'AMPUTADOS DE MIEMBRO SUPERIOR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'B' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
 SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'B' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
 
SELECT 'MR' AS SERVICIO, 'AMPUTADOS DE MIEMBRO INFERIOR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'C' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'C' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
 
UNION ALL
SELECT 'MR' AS SERVICIO, 'ENFERMEDAD MUSCULAR Y UNION MIONEURAL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'D' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'D' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
 
UNION ALL
SELECT 'MR' AS SERVICIO, 'LESIONES DE NERVIO PERIFERICO ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'E' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'E' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'TRANSTORNOS DEL DESARROLLO DE LA FUNCION MOTRIZ ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'F' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'F' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
UNION ALL
SELECT 'MR' AS SERVICIO, 'ENFERMEDAD ARTICULAR DEGENERATIVA  ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'G' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'G' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'ENFERMEDAD CEREBRO VASCULAR (DF) ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'H' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'H' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'ENCEFALOPIA INFANTIL  ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'I' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'I' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'ENFERMEDAD DE PARKINSON ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'J' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'J' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'SINDROME DE DOWN ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'K' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'K' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
 
UNION ALL
SELECT 'MR' AS SERVICIO, 'TRANSTORNOS POSTURALES ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'L' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'L' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'HIPOACUSIA Y SORDERA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'M' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'M' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'


UNION ALL
SELECT 'MR' AS SERVICIO, 'BAJA VISION Y CEGUERA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'N' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'N' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'SORDOMUDEZ: DISCAPACIDAD PARA OIR Y HABLAR ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'O' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'O' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'PARALISIS CEREBRAL INFANTIL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'P' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'P' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'ENFERMEDAD CEREBRO VASCULAR (DS) ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'Q' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'Q' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'
UNION ALL

SELECT 'MR' AS SERVICIO, 'TRANSTORNOS DE APRENDIZAJE ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'R' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'R' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'RETRASO MENTAL : LEVE, MODERA Y SEVERO ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'S' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'S' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'TRANSTORNOS DEL ESPECTRO AUTISTA ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'T' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'T' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UNION ALL
SELECT 'MR' AS SERVICIO, 'OTROS TRANSTORNOS DE SALUD MENTAL ' AS DIAGNOSTICO, 'F' AS SEXO,  SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
   sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
    sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'U' and sexo = 'F' AND servicio = 'MEDICINA REHABILITACION'
  UNION ALL
SELECT  'MR' AS SERVICIO, '--------------------' AS DIAGNOSTICO, 'M' AS SEXO, SUM(n07d) as n07d, SUM(n8d28d) as n8d28d, SUM(n29d11m) as n29d11m,  SUM(n1a4a) as n1a4a, SUM(n5a11a) as n5a11a,
 sum(a1214a) as a1214a, SUM(a1517a) as a1517a, sum(j1829a) as j1829a, SUM(ad30a49a) as ad30a49a, SUM(ad50a59a) as ad50a59a, 
 sum(ad60a) as ad60a, GETDATE() AS fecharegistro  FROM [SIGSALUD].[dbo].[TMP_ACTIVIDAD] where indicador = 'U' and sexo = 'M' AND servicio = 'MEDICINA REHABILITACION'

UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET n07d = 0 where n07d is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET n8d28d = 0 where n8d28d is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET n29d11m = 0 where n29d11m is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET n1a4a = 0 where n1a4a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET n5a11a = 0 where n5a11a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET a1214a = 0 where a1214a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET a1517a = 0 where a1517a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET j1829a = 0 where j1829a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET ad30a49a = 0 where ad30a49a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET ad50a59a = 0 where ad50a59a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET ad60a = 0 where ad60a is null
UPDATE [SIGSALUD].[dbo].[TMP_ACTI_MR] SET reporte = 'R' 
select * from [SIGSALUD].[dbo].[TMP_ACTI_MR]



