
USE SIGSALUD
 declare @lcfecha1 datetime = convert(datetime, '2016-05-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2017-05-31', 101)
 
    declare @lc_lista_emer1_reporte  table (servicio varchar(50), fecha datetime, historia varchar(20), nombres varchar(200), ciex varchar(20))
  declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
    values('A37'),('J18'), ('J05.0'), ('J05.1'), ('J90'),  ('J85.1'), ('J86'), ('J10'), ('J11'), ('J93.9'), ('J18.8')
  declare @lc_lista_de_emer1  table (servicio varchar(50), cantidad int)
  
INSERT INTO @lc_lista_emer1_reporte
  
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, B.HISTORIA, A.NOMBRES, CIEX1 AS CIEX FROM EMERGENCIA A LEFT JOIN PACIENTE B ON B.PACIENTE = A.PACIENTE  WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND 
substring(A.EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX1 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX1 = 'D' 
  UNION ALL 
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, B.HISTORIA, A.NOMBRES, CIEX2 AS CIEX FROM EMERGENCIA A LEFT JOIN PACIENTE B ON B.PACIENTE = A.PACIENTE  WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND 
substring(A.EDAD,1,7) between '000a02m' and '004a00m'  and
CIEX2 IN (  select id_ciex from @lc_lista_de_ciex) AND TIPO_CIEX2 = 'D' 
 UNION ALL
 
SELECT 'EMERGENCIA' AS SERVICIO, FECHA, B.HISTORIA, A.NOMBRES, CIEX3 AS CIEX FROM EMERGENCIA A LEFT JOIN PACIENTE B ON B.PACIENTE = A.PACIENTE  WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND 
substring(A.EDAD,1,7) between '000a02m' and '004a00m'  and
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
   
select servicio, CONVERT(varchar(10), fecha, 103) as fecha, historia, nombres, ciex from @lc_lista_emer1_reporte order by servicio, nombres


/*** FINAL ***/