  declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio
  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
  declare @lccodigo_ipress varchar(8) = '00005947'
  -- DECLARE @lctabla_ciex table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), ciex varchar(6))
  DECLARE @lctabla_ciex table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), ciex varchar(6), HISTORIA VARCHAR(13))
  insert @lctabla_ciex
  select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
  when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
  when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
  when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
  when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
  when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, CODIGO1  AS CIEX, FICHAFAM AS HISTORIA
  from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and SUBSTRING(CODIGO1,1,1) IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
  UNION ALL
  

  select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
  when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
  when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
  when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
  when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
  when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, CODIGO2  AS CIEX, FICHAFAM AS HISTORIA from [SIGSALUD].[dbo].[HIS] where
   PERIODO = @lcperiodo and SUBSTRING(CODIGO2,1,1) IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
  UNION ALL
  select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
  when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
  when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
  when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
  when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
  when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, CODIGO3  AS CIEX, FICHAFAM AS HISTORIA from [SIGSALUD].[dbo].[HIS] where
   PERIODO = @lcperiodo and SUBSTRING(CODIGO3,1,1) IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
  UNION ALL
  select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
  when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
  when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
  when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
  when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
  when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, CODIGO4  AS CIEX, FICHAFAM AS HISTORIA from [SIGSALUD].[dbo].[HIS] where
   PERIODO = @lcperiodo and SUBSTRING(CODIGO4,1,1) IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
  UNION ALL
  select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
  when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
  when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
  when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
  when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
  when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, CODIGO5 AS CIEX, FICHAFAM AS HISTORIA  from [SIGSALUD].[dbo].[HIS] where
   PERIODO = @lcperiodo and SUBSTRING(CODIGO5,1,1) IN ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, EDAD, GRUPO_EDAD, upper(ciex)  DIAGNOSTICO_DEFINITIVO, HISTORIA 
    FROM @lctabla_ciex  order by sexo, convert(int, grupo_edad), convert(int, edad) asc 


/*  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, EDAD, GRUPO_EDAD, upper(ciex)  DIAGNOSTICO_DEFINITIVO, COUNT(edad) TOTAL_ATENDIDOS 
    FROM @lctabla_ciex group by sexo, edad, grupo_edad, ciex order by sexo, convert(int, grupo_edad), convert(int, edad) asc */
