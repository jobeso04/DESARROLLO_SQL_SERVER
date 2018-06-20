  USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, '2017-05-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
  declare @lc_lista_de_emer1  table (servicio varchar(50), cantidad int)
  declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
    values('J45'),('J45.9'), ('A46'), ('J44.8'), ('J44.9')
 
 /*** insertado ***/
 
/*   USE SIGSALUD
  declare @lcfecha1 datetime = convert(datetime, ?lcfecha, 101)
  declare @lcfecha2 datetime = convert(datetime, ?lcfecha2, 101) */
  
 INSERT INTO @lc_lista_de_emer1 
 
 SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX1) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX1 IN (select id_ciex from @lc_lista_de_ciex)  AND TIPO_CIEX1 = 'D'  GROUP BY CIEX1 
 UNION ALL 
 SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX2) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX2 IN (select id_ciex from @lc_lista_de_ciex)  AND TIPO_CIEX2 = 'D'  GROUP BY CIEX2 
 
 UNION ALL 
 
 SELECT 'EMERGENCIA' AS SERVICIO, COUNT(CIEX3) AS CANTIDAD  FROM EMERGENCIA WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND substring(EDAD,1,3) < '005' and
CIEX3 IN (select id_ciex from @lc_lista_de_ciex)  AND TIPO_CIEX3 = 'D'  GROUP BY CIEX3 
 
 UNION ALL
SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX1) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX1 IN (select id_ciex from @lc_lista_de_ciex)  and TipoEdad = '1' AND Edad < 5 group by DX1 
  
UNION ALL

SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX2) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX2 IN (select id_ciex from @lc_lista_de_ciex)  and TipoEdad = '1' AND Edad < 5 group by DX2 
 
UNION ALL

SELECT 'HOSPITALIZACION ' AS SERVICIO, COUNT(DX3) as CANTIDAD FROM V_HOSPITALIZACION 
  WHERE FECHA1 BETWEEN @lcfecha1 AND @lcfecha2 and DX3 IN (select id_ciex from @lc_lista_de_ciex)  and TipoEdad = '1' AND Edad < 5 group by DX3 


SELECT servicio, cantidad FROM @lc_lista_de_emer1
 
 
 /*** fin de insertado ***/
 
 