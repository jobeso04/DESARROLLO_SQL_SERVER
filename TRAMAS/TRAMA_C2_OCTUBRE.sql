declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-10-31', 101)
  truncate table  [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2]
  DECLARE @lctrama_pre_c2 table (sexo varchar(1),  grupo_edad varchar(2), diagnostico_emergencia varchar(10))
  INSERT INTO @lctrama_pre_c2
   SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX4) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX4 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
    SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX5) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX5 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
SELECT case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,  (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX6) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND CIEX6 IN (SELECT CIEX FROM [SIGSALUD].[dbo].[MORBICIEX])
         
insert into [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2]        
SELECT distinct sexo, grupo_edad, diagnostico_emergencia, 0 AS TOTAL_ATENDIDOS FROM @lctrama_pre_c2 
select * from [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2] order BY SEXO, convert(int, GRUPO_EDAD) asc