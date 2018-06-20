 USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
  declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
    values('A37'),('J18'), ('J05.0'), ('J05.1'), ('J90'),  ('J85.1'), ('J86'), ('J10'), ('J11'), ('J93.9'), ('J18.8')
  declare @lc_lista_de_emer1  table (servicio varchar(50), cantidad int)
  
INSERT INTO @lc_lista_de_emer1
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX1 IN (select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX1 = 'D' GROUP BY CIEX1 
  UNION ALL 
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX2) AS CANTIDAD FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX2 IN (select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX2 = 'D' GROUP BY CIEX2 
 UNION ALL
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX3) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX3 IN (select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX3 = 'D' GROUP BY CIEX3 
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX1) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) group by DX1 
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX1) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) group by DX1 
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX2) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) group by DX2 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX2) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) group by DX2 

union all
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX3) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) group by DX3 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX3) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) group by DX3 
SELECT SERVICIO, SUM(CANTIDAD) AS CANTIDAD FROM  @lc_lista_de_emer1 GROUP BY SERVICIO




/***/
 USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
  declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
  values('A37'),('J18'), ('J05.0'), ('J05.1'), ('J90'),  ('J85.1'), ('J86'), ('J10'), ('J11'), ('J93.9'), ('J18.8')
  
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX1 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX1 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX1 = 'D' 
  UNION ALL 
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX2 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX2 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX2 = 'D' 
 UNION ALL
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX3 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX3 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX3 = 'D' 
UNION ALL

SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX1 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX1 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX2 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX2 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) 

union all
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX3 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '2' AND Edad >= 2) 
   
union all
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX3 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (  select id_ciex from @lc_lista_de_ciex)
   AND (TipoEdad = '1' AND Edad <= 4) 



