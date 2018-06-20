declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio
declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
declare @lccodigo_ipress varchar(8) = '00005947'

DECLARE @lctabla_ciex table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), ciex varchar(6))
-- insert @lctabla_ciex
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, substring(CODIGO1,1,3) + '.' + substring(CODIGO1,4,1)  AS CIEX
from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and CODIGO1 IN (SELECT replace(CIEX,'.', '')   FROM [SIGSALUD].[dbo].[MORBICIEX])


ananias: 3167

obeso : 2433


UNION ALL
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, substring(CODIGO2,1,3) + '.' + substring(CODIGO2,4,1)  AS CIEX from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and CODIGO2 IN (SELECT replace(CIEX,'.', '')   FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, substring(CODIGO3,1,3) + '.' + substring(CODIGO3,4,1)  AS CIEX from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and CODIGO3 IN (SELECT replace(CIEX,'.', '')   FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, substring(CODIGO4,1,3) + '.' + substring(CODIGO4,4,1)  AS CIEX from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and CODIGO4 IN (SELECT replace(CIEX,'.', '')   FROM [SIGSALUD].[dbo].[MORBICIEX])
UNION ALL
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, case 
when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as grupo_edad, substring(CODIGO5,1,3) + '.' + substring(CODIGO5,4,1)  AS CIEX from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo and CODIGO5 IN (SELECT replace(CIEX,'.', '')   FROM [SIGSALUD].[dbo].[MORBICIEX])
SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, GRUPO_EDAD, upper(ciex)  DIAGNOSTICO_DEFINITIVO, COUNT(edad) TOTAL_ATENDIDOS 
  FROM @lctabla_ciex group by sexo, edad, grupo_edad, ciex order by sexo, convert(int, grupo_edad), convert(int, edad) asc
  
  