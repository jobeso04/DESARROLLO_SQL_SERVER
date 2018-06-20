


  declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_C2]
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_F_C2]
  TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_MOR_ATN_M_C2]
   SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[EMERGENCIA]  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO in ('3', '4', '5') GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)



  declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
  declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
    DECLARE @lidpaciente varchar(13) = '2008140968'
    declare @lnatencion int = 1
    declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'M' END FROM [SIGSALUD].[dbo].[EMERGENCIA]  where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)    
    declare @lcedad_obtenida varchar(3) =  (SELECT TOP 1 convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a' and paciente = @lidpaciente  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 )
    declare @lc_grupo_edad varchar(2) = (CASE WHEN @lcedad_obtenida < 1 THEN '1' WHEN @lcedad_obtenida BETWEEN 1 AND 4 THEN '2' WHEN @lcedad_obtenida BETWEEN 5 AND 9 THEN '3' WHEN @lcedad_obtenida BETWEEN 10 AND 14 THEN '4' WHEN @lcedad_obtenida BETWEEN 15 AND 19 THEN '5' 
     WHEN @lcedad_obtenida BETWEEN 20 AND 24 THEN '6' WHEN @lcedad_obtenida BETWEEN 25 AND 29 THEN '7' WHEN @lcedad_obtenida BETWEEN 30 AND 34 THEN '8' WHEN @lcedad_obtenida BETWEEN 35 AND 39 THEN '9' WHEN @lcedad_obtenida BETWEEN 40 AND 44 THEN '10'
       WHEN @lcedad_obtenida BETWEEN 45 AND 49 THEN '11' WHEN @lcedad_obtenida BETWEEN 50 AND 54 THEN '12' WHEN @lcedad_obtenida BETWEEN 55 AND 59 THEN '13' WHEN @lcedad_obtenida BETWEEN 60 AND 64 THEN '14' WHEN @lcedad_obtenida >=65  THEN '15'
          ELSE  '1' END) 
    DECLARE @lcdx varchar(10) = (SELECT CIEX4 FROM [SIGSALUD].[dbo].[EMERGENCIA]   WHERE PACIENTE = @lidpaciente  AND FECHA BETWEEN @lcfecha1  AND @lcfecha2  AND TIPO_CIEX4 = 'D' AND  TIPO_CIEX4 = 'D' AND CIEX4 IS NOT NULL AND CIEX4 <> ''AND CIEX4 <> '0')
    DECLARE @lcdx2 varchar(10) = (SELECT CIEX5 FROM [SIGSALUD].[dbo].[EMERGENCIA]   WHERE PACIENTE = @lidpaciente  AND FECHA BETWEEN @lcfecha1  AND @lcfecha2  AND TIPO_CIEX5 = 'D' AND TIPO_CIEX5 = 'D' AND CIEX5 IS NOT NULL AND CIEX5 <> ''AND CIEX5 <> '0')    
    INSERT INTO [SIGSALUD].[dbo].[TMP_MOR_ATN_C2]([sexo_paciente],[grupo_edad],[diagnostico_definitivo],[total_atendidos]) 
      select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, @lcdx as diagnostico_definitivo, 0 as total_atendidos
      UNION ALL 
      select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, @lcdx2 as diagnostico_definitivo, 0 as total_atendidos      
