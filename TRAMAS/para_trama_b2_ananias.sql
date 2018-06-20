 /* para la trama c2 - considerar el dx de salida, solo DX1 - y debe ser igual al reporte total de emergencia */
 
 /* sollo emergencia, usar un dagnostico */
 
 
 5714 - esztado 3,4,5
 SELECT edad, case when SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX1) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN convert(datetime, '2017-10-01', 101)  AND convert(datetime, '2017-10-31', 101) AND ESTADO in ('4', '5')
   and CIEX1 <> '0'       order by ciex1, GRUPO_EDAD asc
   
   
   
   5292 - 4,5
   
   
   
   and TIPO_CIEX1 = 'D'