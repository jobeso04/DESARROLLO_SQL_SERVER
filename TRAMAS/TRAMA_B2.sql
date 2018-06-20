/*
 declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_B2]
   TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_F_B2]
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_M_B2]
  
  SELECT PACIENTE FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE ID_CITA IN (SELECT ID_CITA FROM [SIGSALUD].[dbo].[ATENCIOND] WHERE ID_CITA IN (SELECT ID_CITA FROM [SIGSALUD].[dbo].[ATENCIONC]
   WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2) AND TIPODX = 'D' AND SUBSTRING(DX,1,1) NOT IN ('9', 'U', '5', '1')
  AND LEN(DX) <= 4 AND DX <> '' GROUP BY ID_CITA)
  */
  
  /* FASE 2 POR PACIENTE 
 declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
 DECLARE @lidpaciente varchar(13) = '2017271993'
 declare @lnatencion int = 1
 declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[ATENCIONC] where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
 declare @lc_grupo_edad varchar(2) = (SELECT top 1 CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
     WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
       WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
          ELSE  'ND' END FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
DECLARE @lt_tmp_diag table (dx varchar(5))
insert @lt_tmp_diag
SELECT dx FROM [SIGSALUD].[dbo].[ATENCIOND] WHERE ID_CITA IN (select id_cita from [SIGSALUD].[dbo].[ATENCIONC] where PACIENTE = @lidpaciente and FECHA between @lcfecha1 and @lcfecha2) AND TIPODX = 'D' AND SUBSTRING(DX,1,1) NOT IN ('9', 'U', '5', '1')
    AND LEN(DX) <= 4 AND DX <> ''
INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_B2]([sexo_paciente],[grupo_edad],[diagnostico_definitivo],[total_atendidos])
select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, dx as diagnostico_definitivo, 1 as total_atendidos from @lt_tmp_diag

SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_B2]

*/
 
 INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_M_B2]([SEXO_PAC],[GRUPO_EDAD],[DIAGNOSTICO_DEFINITIVO],[TOTAL_ATENDIDOS])
	  SELECT '1' AS SEXO_PAC, GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO, '1' AS TOTAL_ATENDIDOS   FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_B2]
	     where sexo_paciente = '1'  GROUP BY GRUPO_EDAD, DIAGNOSTICO_DEFINITIVO 
	     
	     SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_M_B2] ORDER BY SEXO_PAC, convert(int, grupo_edad)    
	     
	     
	     
	     SELECT * FROM [SIGSALUD].[dbo].[TMP_MOR_ATN_TOTAL]   ORDER BY SEXO_PAC, convert(int, grupo_edad)    
	     
	             
        
        
        
        

