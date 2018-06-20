/*
declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)

SELECT convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a' 
  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 ORDER BY EDAD DESC
  
  
  

SELECT PACIENTE, COUNT(PACIENTE) AS ATENCIONES FROM [SIGSALUD].[dbo].[EMERGENCIA] 
  WHERE FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ESTADO > '3' GROUP BY PACIENTE ORDER BY  COUNT(PACIENTE)
  
  
  SELECT * FROM [SIGSALUD].[dbo].[EMERGENCIA] 
  */
  
  
  SELECT convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a' and paciente = '2010194766' 
  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 
  
  
  
declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
    DECLARE @lidpaciente varchar(13) = '2010194766'
    declare @lnatencion int = 1
    declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[EMERGENCIA]  where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
    declare @ln_atm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.QUIEN_ATIENDE  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA = 'MED')
    declare @ln_atnm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.QUIEN_ATIENDE  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA <> 'MED')
    declare @lcedad_obtenida varchar(3) =  (SELECT convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a' and paciente = @lidpaciente  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 )
    declare @lc_grupo_edad varchar(2) = (CASE WHEN @lcedad_obtenida < 1 THEN '1' WHEN @lcedad_obtenida BETWEEN 1 AND 4 THEN '2' WHEN @lcedad_obtenida BETWEEN 5 AND 9 THEN '3' WHEN @lcedad_obtenida BETWEEN 10 AND 14 THEN '4' WHEN @lcedad_obtenida BETWEEN 15 AND 19 THEN '5' 
     WHEN @lcedad_obtenida BETWEEN 20 AND 24 THEN '6' WHEN @lcedad_obtenida BETWEEN 25 AND 29 THEN '7' WHEN @lcedad_obtenida BETWEEN 30 AND 34 THEN '8' WHEN @lcedad_obtenida BETWEEN 35 AND 39 THEN '9' WHEN @lcedad_obtenida BETWEEN 40 AND 44 THEN '10'
       WHEN @lcedad_obtenida BETWEEN 45 AND 49 THEN '11' WHEN @lcedad_obtenida BETWEEN 50 AND 54 THEN '12' WHEN @lcedad_obtenida BETWEEN 55 AND 59 THEN '13' WHEN @lcedad_obtenida BETWEEN 60 AND 64 THEN '14' WHEN @lcedad_obtenida >=65  THEN '15'
          ELSE  '1' END) 
       INSERT INTO [SIGSALUD].[dbo].[TMP_TR_ATEN]([SEXO_PACIENTE],[GRUPO_EDAD],[ATENCION_MEDICO],[ATENCION_NO_MEDICO],[ATENDIDO_POR_MES])
       select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, @ln_atm as atencion_medico, @ln_atnm as atencion_no_medico, @lnatencion as atendido_por_mes    
    
    
    select * from [SIGSALUD].[dbo].[TMP_TR_ATEN]
    update [SIGSALUD].[dbo].[TMP_TR_ATEN] set GRUPO_EDAD = '15' where GRUPO_EDAD = 'ND'
    
    
    [SIGSALUD].[dbo].[TMP_TR_ATEN]
    
    

  INSERT INTO [SIGSALUD].[dbo].[TMP_TR_ATEN_M]([sex],[grupo_edad],[atm],[atnm],[attm])
    select '2' as sex, grupo_edad, sum(atencion_medico) as atm, sum(atencion_no_medico) as atnm, count(atendido_por_mes) as attm from [SIGSALUD].[dbo].[TMP_TR_ATEN]
        where sexo_paciente = '2' group by grupo_edad order by convert(int, grupo_edad)   


 select '1' as sex, grupo_edad, sum(atencion_medico) as atm, sum(atencion_no_medico) as atnm, count(atendido_por_mes) as attm from [SIGSALUD].[dbo].[TMP_TR_ATEN]
        where sexo_paciente = '1' group by grupo_edad order by convert(int, grupo_edad)   
        
        

        select * from  [SIGSALUD].[dbo].[TMP_TR_ATEN_M]
        
    truncate table [SIGSALUD].[dbo].[TMP_TR_ATEN_M]
    
    
    
    
    
    
    
    
    
    
    declare @lnatencion int = 1
    declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[EMERGENCIA]  where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
    declare @ln_atm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.QUIEN_ATIENDE  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA = 'MED')
    declare @ln_atnm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[EMERGENCIA] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.QUIEN_ATIENDE  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA <> 'MED')
    declare @lcedad_obtenida varchar(3) =  (SELECT convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a' and paciente = @lidpaciente  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 )
    declare @lc_grupo_edad varchar(2) = (CASE WHEN @lcedad_obtenida < 1 THEN '1' WHEN @lcedad_obtenida BETWEEN 1 AND 4 THEN '2' WHEN @lcedad_obtenida BETWEEN 5 AND 9 THEN '3' WHEN @lcedad_obtenida BETWEEN 10 AND 14 THEN '4' WHEN @lcedad_obtenida BETWEEN 15 AND 19 THEN '5' 
     WHEN @lcedad_obtenida BETWEEN 20 AND 24 THEN '6' WHEN @lcedad_obtenida BETWEEN 25 AND 29 THEN '7' WHEN @lcedad_obtenida BETWEEN 30 AND 34 THEN '8' WHEN @lcedad_obtenida BETWEEN 35 AND 39 THEN '9' WHEN @lcedad_obtenida BETWEEN 40 AND 44 THEN '10'
       WHEN @lcedad_obtenida BETWEEN 45 AND 49 THEN '11' WHEN @lcedad_obtenida BETWEEN 50 AND 54 THEN '12' WHEN @lcedad_obtenida BETWEEN 55 AND 59 THEN '13' WHEN @lcedad_obtenida BETWEEN 60 AND 64 THEN '14' WHEN @lcedad_obtenida >=65  THEN '15'
          ELSE  'ND' END) 
  select @lc_grupo_edad          
          
          
          
          
          
          
       INSERT INTO [SIGSALUD].[dbo].[TMP_TR_ATEN]([SEXO_PACIENTE],[GRUPO_EDAD],[ATENCION_MEDICO],[ATENCION_NO_MEDICO],[ATENDIDO_POR_MES])
       select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, @ln_atm as atencion_medico, @ln_atnm as atencion_no_medico, @lnatencion as atendido_por_mes


  
  
 TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_TR_ATEN]
  truncate table [SIGSALUD].[dbo].[TMP_TR_ATEN_M]
  truncate table [SIGSALUD].[dbo].[TMP_TR_ATEN_F]  


declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
declare @lcedad_obtenida varchar(3) =  (SELECT convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD  FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE SUBSTRING(EDAD,1,3) <> '00a'  and FECHA BETWEEN @lcfecha1  AND @lcfecha2 )

    declare @lc_grupo_edad varchar(2) = (CASE WHEN @lcedad_obtenida < 1 THEN '1' WHEN @lcedad_obtenida BETWEEN 1 AND 4 THEN '2' WHEN @lcedad_obtenida BETWEEN 5 AND 9 THEN '3' WHEN @lcedad_obtenida BETWEEN 10 AND 14 THEN '4' WHEN @lcedad_obtenida BETWEEN 15 AND 19 THEN '5' 
     WHEN @lcedad_obtenida BETWEEN 20 AND 24 THEN '6' WHEN @lcedad_obtenida BETWEEN 25 AND 29 THEN '7' WHEN @lcedad_obtenida BETWEEN 30 AND 34 THEN '8' WHEN @lcedad_obtenida BETWEEN 35 AND 39 THEN '9' WHEN @lcedad_obtenida BETWEEN 40 AND 44 THEN '10'
       WHEN @lcedad_obtenida BETWEEN 45 AND 49 THEN '11' WHEN @lcedad_obtenida BETWEEN 50 AND 54 THEN '12' WHEN @lcedad_obtenida BETWEEN 55 AND 59 THEN '13' WHEN @lcedad_obtenida BETWEEN 60 AND 64 THEN '14' WHEN @lcedad_obtenida >=65  THEN '15'
          ELSE  '1' END) 




  DECLARE @lt_tmp_at_ged table (grupo_edad varchar(2))
  
  
  
  insert @lt_tmp_at_ged
  SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
   WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
     WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
        ELSE  '1' END as grupo_edad  FROM [SIGSALUD].[dbo].[EMERGENCIA]  where  FECHA BETWEEN @lcfecha1  AND @lcfecha2  and SEXO = 'M' order by edad
        
   SELECT grupo_edad, COUNT(grupo_edad) as atencion_mes from @lt_tmp_at_ged group by grupo_edad order by convert(int, grupo_edad)
   
   
   
 select '1' as sex, grupo_edad, sum(atencion_medico) as atm, sum(atencion_no_medico) as atnm, count(atendido_por_mes) as attm from [SIGSALUD].[dbo].[TMP_TR_ATEN]
        where sexo_paciente = '1' group by grupo_edad order by convert(int, grupo_edad) 
           


/* cuantas personas hay en ese grupo de edad */

declare @lcfecha1 datetime = convert(datetime, '2017-09-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-09-30', 101)
declare @lt_cedad_de_emergencia  table (edad varchar(3))
insert @lt_cedad_de_emergencia
select convert(varchar(3), (CONVERT(INT, SUBSTRING(EDAD,1,3)))) AS EDAD
 from [SIGSALUD].[dbo].[EMERGENCIA] where FECHA BETWEEN @lcfecha1  AND @lcfecha2  and SEXO = 'F' and SUBSTRING(EDAD,1,3) <> '00a'
 DECLARE @lt_tmp_at_ged table (grupo_edad varchar(2))
  insert @lt_tmp_at_ged
  SELECT CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
   WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
     WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
        ELSE  '1' END as grupo_edad  FROM @lt_cedad_de_emergencia
   SELECT grupo_edad, COUNT(grupo_edad) as atencion_mes from @lt_tmp_at_ged group by grupo_edad order by convert(int, grupo_edad)
   
   