  /* REVISOON DE TRAMA C1 */
 /* SELECT [CONSULTORIOS] FROM [SIGSALUD].[dbo].[TMP_MEDICAS_NO_MEDICAS_B1] WHERE TIPO_MEDICAS = '1' */
 
  declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
  declare @lnmes int = month(@lcfecha1)
  declare @lnanio int = year(@lcfecha1)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio 
  DECLARE @lcatencion_medica table (atnmedica varchar(100))
  insert @lcatencion_medica 
  SELECT [CONSULTORIOS] FROM [SIGSALUD].[dbo].[TMP_MEDICAS_NO_MEDICAS_B1] WHERE TIPO_MEDICAS = '1'
  DECLARE @lctabla_atm_medica table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  -- DECLARE @lctabla_atm_medica_final table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final table  (sexo varchar(1),  grupo_edad varchar(2), atencion_medica int)  
  INSERT @lctabla_atm_medica 
  SELECT CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO,  CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end  as  edad,
  case when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) < 1 then 1
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 1 and  4 then 2
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 5 and  9 then 3
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 10 and  14 then 4
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 15 and  19 then 5
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 20 and  24 then 6
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 25 and  29 then 7
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 30 and  34 then 8
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 35 and  39 then 9
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 40 and  44 then 10
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 45 and  49 then 11
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 50 and  54 then 12
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 55 and  59 then 13
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) between 60 and  64 then 14
       when (CASE WHEN substring(EDAD,1,3) = '00a' then 0 else convert(int, substring(EDAD,1,3)) end) > 64 then 15  END AS GRUPO_EDAD,
       0 AS ATENCION_MEDICA  FROM [SIGSALUD].[dbo].[EMERGENCIA]    WHERE month(FECHA) = @lnmes and year(FECHA)= @lnanio AND ESTADO IN ('3', '4', '5') 
            AND CONSULTORIO NOT IN ('3050', '2051', '1094', '2050', '4050', '1096', '1050') order by SEXO, substring(EDAD,1,3)  
insert into @lctabla_atm_medica_final
SELECT sexo, grupo_edad, COUNT(EDAD) AS atencion_medica  FROM @lctabla_atm_medica   
GROUP BY sexo, edad, GRUPO_EDAD ORDER BY sexo, CONVERT(int, grupo_edad)

select sexo, grupo_edad, sum(atencion_medica) as at_NO_m from @lctabla_atm_medica_final
group by sexo, grupo_edad ORDER BY sexo, CONVERT(int, grupo_edad)


