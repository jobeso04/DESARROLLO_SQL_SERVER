/* Trama Consolidada de morbilidad en consulta ambulatoria  */

declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
SELECT PACIENTE FROM ATENCIONC WHERE ID_CITA IN (SELECT ID_CITA FROM ATENCIOND WHERE ID_CITA IN (SELECT ID_CITA FROM ATENCIONC WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2) AND TIPODX = 'D' AND SUBSTRING(DX,1,1) NOT IN ('9', 'U', '5', '1')
AND LEN(DX) <= 4 AND DX <> '' GROUP BY ID_CITA)


/* declare @lcfecha1 datetime = convert(datetime, ?lc_fecha1, 101)
 declare @lcfecha2 datetime = convert(datetime, ?lc_fecha2, 101)*/
 
declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
DECLARE @lidpaciente varchar(13) = '2017275993'
declare @lnatencion int = 1
declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[ATENCIONC] where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
declare @lc_grupo_edad varchar(2) = (SELECT top 1 CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
     WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
       WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
          ELSE  'ND' END FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
DECLARE @lt_tmp_diag table (dx varchar(5))
insert @lt_tmp_diag
SELECT dx FROM ATENCIOND WHERE ID_CITA IN (select id_cita from ATENCIONC where PACIENTE = @lidpaciente and FECHA between @lcfecha1 and @lcfecha2) AND TIPODX = 'D' AND SUBSTRING(DX,1,1) NOT IN ('9', 'U', '5', '1')
AND LEN(DX) <= 4 AND DX <> ''
INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN]([sexo_paciente],[grupo_edad],[diagnostico_definitivo],[total_atendidos])
select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, dx as diagnostico_definitivo, 1 as total_atendidos from @lt_tmp_diag

SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN]

TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN]


SELECT '1' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '1'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO order by convert(int, grupo_edad)    
   

SELECT '2' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '2'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO order by convert(int, grupo_edad)    


INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]

TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]
INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]([SEXO_PAC],[GRUPO_EDAD],[DIAGNOSTICO_DEFINITIVO],[TOTAL_ATENDIDOS])
SELECT '1' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS   FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '1'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO 
union all 
SELECT '2' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '2'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO 
SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]   ORDER BY SEXO_PAC, convert(int, grupo_edad)    




TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]
INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]([SEXO_PAC],[GRUPO_EDAD],[DIAGNOSTICO_DEFINITIVO],[TOTAL_ATENDIDOS])
SELECT '1' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS   FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '1'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO 
SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]   ORDER BY SEXO_PAC, convert(int, grupo_edad)    


declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
declare @ldiax varchar(4) = 'A071'
 DECLARE @lt_tmp_at_ged table (SEX VARCHAR(1), grupo_edad varchar(2))
  insert @lt_tmp_at_ged
SELECT '1' AS SEX, CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
     WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
       WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
          ELSE  'ND' END FROM ATENCIONC WHERE sexo = 'M' and  FECHA between @lcfecha1 and @lcfecha2 AND ID_CITA IN (
select ID_CITA from ATENCIOND where DX = 'A071' and TIPODX = 'D' AND ID_CITA IN (SELECT ID_CITA FROM ATENCIONC WHERE FECHA between @lcfecha1 and @lcfecha2))
SELECT grupo_edad, COUNT(GRUPO_EDAD) AS ATN FROM @lt_tmp_at_ged GROUP BY GRUPO_EDAD



declare @lc_grupo_edad varchar(2) = (SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
     WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
       WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
          ELSE  'ND' END FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)






select ID_CITA from ATENCIOND where DX = 'A071' and TIPODX = 'D' AND ID_CITA IN (SELECT ID_CITA FROM ATENCIONC WHERE FECHA between @lcfecha1 and @lcfecha2 )


SELECT SEXO_PACIENTE, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN] 
   where sexo_paciente = '1'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO order by convert(int, grupo_edad)    
   


select '1' as sex, grupo_edad, sum(atencion_medico) as atm, sum(atencion_no_medico) as atnm, count(atendido_por_mes) as attm from [SIGSALUD].[dbo].[TMP_TR_ATEN]
    where sexo_paciente = '1' group by grupo_edad order by convert(int, grupo_edad)    
    
    
     SELECT * FROM [SIGSALUD].[dbo].[TMP_TR_ATEN_M]
     UNION ALL
     SELECT * FROM [SIGSALUD].[dbo].[TMP_TR_ATEN_F]



/* para total */
declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
DECLARE @lt_tmp_at_ged table (grupo_edad varchar(2))
insert @lt_tmp_at_ged
SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
 WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
  WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
   ELSE  'ND' END as grupo_edad  FROM [SIGSALUD].[dbo].[ATENCIONC] where  FECHA BETWEEN @lcfecha1  AND @lcfecha2   order by edad
SELECT grupo_edad, COUNT(grupo_edad) as atencion_mes from @lt_tmp_at_ged group by grupo_edad order by convert(int, grupo_edad)


 
/* para masculino */
declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
DECLARE @lt_tmp_at_ged table (grupo_edad varchar(2))
insert @lt_tmp_at_ged
SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
 WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
  WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
   ELSE  'ND' END as grupo_edad  FROM [SIGSALUD].[dbo].[ATENCIONC] where  FECHA BETWEEN @lcfecha1  AND @lcfecha2  and SEXO = 'M' order by edad
SELECT grupo_edad, COUNT(grupo_edad) as atencion_mes from @lt_tmp_at_ged group by grupo_edad order by convert(int, grupo_edad)


SELECT * FROM [SIGSALUD].[dbo].[TMP_TR_ATEN_M]




/* para femenino */
declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
DECLARE @lt_tmp_at_ged table (grupo_edad varchar(2))
insert @lt_tmp_at_ged
SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
 WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
  WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
   ELSE  'ND' END as grupo_edad  FROM [SIGSALUD].[dbo].[ATENCIONC] where  FECHA BETWEEN @lcfecha1  AND @lcfecha2  and SEXO = 'F' order by edad
SELECT grupo_edad, COUNT(grupo_edad) as atencion_mes from @lt_tmp_at_ged group by grupo_edad order by convert(int, grupo_edad)








declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
  declare @lccodigo_ipress varchar(8) = '00005947'
  /*SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO_PAC as SEXO_PACIENTE, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL] 
  UNION ALL*/
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO_PAC as SEXO_PACIENTE, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, TOTAL_ATENDIDOS FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL_F] 
  