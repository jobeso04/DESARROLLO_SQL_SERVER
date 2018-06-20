declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-10-31', 101)
  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
--  declare @lccodigo_ipress varchar(8) = ?lcipress
  truncate table  [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2]
  --DECLARE @lctrama_pre_c2 table (sexo varchar(1),  grupo_edad varchar(2), diagnostico_emergencia varchar(10))
  -- INSERT INTO @lctrama_pre_c2
    SELECT fecha, B.HISTORIA, case when A.SEXO = 'F' then '1' ELSE '2' END AS SEXO,   (CASE WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) < 1 THEN '1' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 1 AND 4 THEN '2' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 5 AND 9 THEN '3'
   WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 10 AND 14 THEN '4' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 15 AND 19 THEN '5'  WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 20 AND 24 THEN '6' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 25 AND 29 THEN '7'
       WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 30 AND 34 THEN '8' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 35 AND 39 THEN '9'  WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 40 AND 44 THEN '10'
       WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 45 AND 49 THEN '11'   WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 50 AND 54 THEN '12'
        WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 55 AND 59 THEN '13'  WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) BETWEEN 60 AND 64 THEN '14' WHEN convert(int, REPLACE(SUBSTRING(A.EDAD,1,4),'a','')) >=65  THEN '15' END) AS GRUPO_EDAD, 
        UPPER(CIEX1) AS CIEX
   FROM [SIGSALUD].[dbo].[EMERGENCIA] a left join [SIGSALUD].[dbo].[PACIENTE] B ON A.PACIENTE = B.PACIENTE  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5')
         AND substring(CIEX1,1,1) IN  (SELECT substring(CIEX,1,1) FROM [SIGSALUD].[dbo].[MORBICIEX] group by substring(CIEX,1,1))
         order by fecha asc
         

declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-10-31', 101)
-- SELECT PRIORIDAD FROM [SIGSALUD].[dbo].[EMERGENCIA] GROUP BY PRIORIDAD
select * from [SIGSALUD].[dbo].[EMERGENCIA] WHERE FECHA between @lcfecha1 and @lcfecha2 and PRIORIDAD in ('Prioridad 1', 'Prioridad 2', 'Prioridad 3', 'Prioridad 4')
AND CIEX1 <> '0' ORDER BY EMERGENCIA_ID DESC

declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-10-31', 101)
select * from [SIGSALUD].[dbo].[V_EMERGENCIA] WHERE FECHA between @lcfecha1 and @lcfecha2 and PRIORIDAD in ('Prioridad 1', 'Prioridad 2', 'Prioridad 3', 'Prioridad 4')
AND  CIEX1 = '0'  ORDER BY EMERGENCIA_ID DESC




-- TODO ES : 6059


-- NELA: 6057
-- REPORTADO : 6116



UPDATE [SIGSALUD].[dbo].[EMERGENCIA]  SET ESTADO = '2' WHERE EMERGENCIA_ID IN ('17043446', '17045003')
         
         
         
   insert into [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2]       
   select SEXO, GRUPO_EDAD, DIAGNOSTICO_EMERGENCIA, COUNT(GRUPO_EDAD) AS  TOTAL_ATENDIDOS from @lctrama_pre_c2 
    GROUP BY SEXO, GRUPO_EDAD, DIAGNOSTICO_EMERGENCIA 
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, GRUPO_EDAD, 
	  case when len(diagnostico_emergencia) = 3 then rtrim(DIAGNOSTICO_EMERGENCIA) + '.X' else DIAGNOSTICO_EMERGENCIA
	  end AS DIAGNOSTICO_EMERGENCIA, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_TRAMA_PRE_C2] WHERE TOTAL_ATENDIDOS <> 0