USE SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-05-30', 101)
declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
  values('J18.9'),('J18.1'), ('J12'), ('J13'), ('J14'),  ('J15'), ('J16')
declare @lc_lista_de_emer1  table (servicio varchar(50), cantidad int)
  
INSERT INTO @lc_lista_de_emer1
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX1 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX1 = 'D' GROUP BY CIEX1 
  UNION ALL 
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX2 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX2 = 'D' GROUP BY CIEX2 
 UNION ALL
SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX3 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX3 = 'D' GROUP BY CIEX3 
UNION ALL

SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX1) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5 group by DX1 
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX2) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5 group by DX2 
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, COUNT(DX3) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5 group by DX3 
SELECT SERVICIO, SUM(CANTIDAD) AS CANTIDAD FROM  @lc_lista_de_emer1 GROUP BY SERVICIO




/*****************/

/**** ESTA ES PARA EL DETALLE DE PERSONAS */

USE SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-05-30', 101)
declare @lc_lista_emer1_reporte  table (servicio varchar(50), fecha datetime, historia varchar(20), nombres varchar(200), ciex varchar(20))
declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
  values('J18.9'),('J18.1'), ('J12'), ('J13'), ('J14'),  ('J15'), ('J16')

insert into @lc_lista_emer1_reporte

SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX1 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX1 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX1 = 'D' 
  UNION ALL 
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX2 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX2 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX2 = 'D' 
 UNION ALL
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, HISTORIA, NOMBRES, CIEX3 AS CIEX FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX3 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX3 = 'D' 
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX1 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX1 IN (  select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5   
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX2 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX2 IN (  select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5   
UNION ALL
SELECT 'HOSPITALIZACION' AS SERVICIO, FECHA1 AS FECHA, HISTORIA, NOMBRES, DX3 AS CIEX FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and  DX3 IN (  select id_ciex from @lc_lista_de_ciex)
   AND TipoEdad = '1' AND Edad < 5   
select servicio, CONVERT(varchar(10), fecha, 103) as fecha, historia, nombres, ciex from @lc_lista_emer1_reporte order by servicio, nombres