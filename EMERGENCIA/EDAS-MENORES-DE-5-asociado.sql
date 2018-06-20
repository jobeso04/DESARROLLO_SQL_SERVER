  USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
  declare @lc_lista_de_emer1  table (servicio varchar(50), cantidad int)
  declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
    values('A00.9'),('A09'), ('A04.9'), ('A09.9'), ('A00'),  ('A01'), ('A01.1'), ('A01.2'), ('A01.3'), ('A01.4'), ('A02'), ('A03'), ('A03.9'), ('A04.5'), 
      ('A05'), ('A06'), ('A06.2'), ('A07'), ('A01.4'), ('A08'), ('A08.2'), ('A08.3'), ('A08.4')
  declare @lc_lista_de_ciex_asociados  table (id_ciex varchar(20)); insert @lc_lista_de_ciex_asociados(id_ciex) 
    values('E86'),('R57.1'), ('K56.0'), ('E87.2'),('0')
 
 INSERT INTO @lc_lista_de_emer1
 SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX1 IN (select id_ciex from @lc_lista_de_ciex) AND CIEX2 IN (select id_ciex from @lc_lista_de_ciex_asociados) and
CIEX3 IN ((select id_ciex from @lc_lista_de_ciex_asociados)) AND TIPO_CIEX1 = 'D'  GROUP BY CIEX1 
 UNION ALL 
SELECT 'EMERGENCIA ' AS SERVICIO,  COUNT(CIEX2) AS CANTIDAD FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX2 IN (select id_ciex from @lc_lista_de_ciex) AND CIEX1 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND  
CIEX3 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND TIPO_CIEX2 = 'D'  GROUP BY CIEX2 
 UNION ALL
SELECT 'EMERGENCIA ' AS SERVICIO,  COUNT(CIEX3) AS CANTIDAD FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX3 IN (select id_ciex from @lc_lista_de_ciex) AND CIEX2 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND  
CIEX1 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND TIPO_CIEX3 = 'D'  GROUP BY CIEX3 
 UNION ALL
SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX1) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX1 IN (select id_ciex from @lc_lista_de_ciex) AND
  DX2 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND
  DX3 IN (select id_ciex from @lc_lista_de_ciex_asociados) and TipoEdad = '1' AND Edad < 5 group by DX1 
UNION ALL
SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX2) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX2 IN (select id_ciex from @lc_lista_de_ciex) AND
  DX1 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND
  DX3 IN (select id_ciex from @lc_lista_de_ciex_asociados) and TipoEdad = '1' AND Edad < 5 group by DX2
union all  
SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX3) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX3 IN (select id_ciex from @lc_lista_de_ciex) AND
  DX2 IN (select id_ciex from @lc_lista_de_ciex_asociados) AND
  DX1 IN (select id_ciex from @lc_lista_de_ciex_asociados) and TipoEdad = '1' AND Edad < 5 group by DX3
  
 select SERVICIO, CANTIDAD from @lc_lista_de_emer1 
  