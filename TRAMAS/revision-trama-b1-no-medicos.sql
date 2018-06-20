/* trama b1 */

declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_TRAMAB1_ATM_NO_MEDICA]
declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio 
declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
declare @lccodigo_ipress varchar(8) = '00005947'
DECLARE @lcatencion_no_medica table (atn_no_medica varchar(100))
insert @lcatencion_no_medica values ('MEDICINA REHABILITACION'), ('PSICOPROFILAXIS'), ('RADIOLOGIA ORAL'), ('PROG HIPERTENSION Y DIABETES'), ('INMUNIZACIONES'), ('PCT'), 
  ('CRECIMIENTO Y DESARROLLO'), ('REHABILITACION TERAPIA'), ('SERVICIO SOCIAL'), ('PSICOLOGIA'), ('PLANIFICACION FAMILIAR'), ('ODONTOLOGIA'), ('NUTRICION'), ('MONITOREO FETAL'), ('OBSTETRICIA')
DECLARE @lctabla_atm_no_medica table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_no_medica varchar(4))
DECLARE @lctabla_atm_no_medica_final table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica varchar(4))
INSERT @lctabla_atm_no_medica 
select CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD,
case when tipoedad in ('M', 'D') then '1' when tipoedad in ('A') and edad between 1 and 4  then '2' when tipoedad in ('A') and edad between 5 and 9  then '3' when tipoedad in ('A') and edad between 10 and 14  then '4' 
when tipoedad in ('A') and edad between 15 and 19  then '5' when tipoedad in ('A') and edad between 20 and 24  then '6' when tipoedad in ('A') and edad between 25 and 29  then '7' 
when tipoedad in ('A') and edad between 30 and 34  then '8' when tipoedad in ('A') and edad between 35 and 39  then '9' when tipoedad in ('A') and edad between 40 and 44  then '10' 
when tipoedad in ('A') and edad between 45 and 49  then '11' when tipoedad in ('A') and edad between 50 and 54  then '12' when tipoedad in ('A') and edad between 55 and 59  then '13' 
when tipoedad in ('A') and edad between 60 and 64  then '14' when tipoedad in ('A') and edad >= 65  then '15' end as GRUPO_EDAD, CASE WHEN HSERVICIO IN (select atn_no_medica from @lcatencion_no_medica) THEN 1 ELSE 0 END AS ATENCION_NO_MEDICA
from [SIGSALUD].[dbo].[HIS] where PERIODO = @lcperiodo  and edad <> 0 ORDER BY SEXO, GRUPO_EDAD
select sexo, grupo_edad, sum(convert(int, atencion_no_medica)) as atencion_no_medica, 0 as ATENDIDOS_MES 
from @lctabla_atm_no_medica WHERE atencion_no_medica <> 0  group by sexo, grupo_edad order by sexo, convert(int, grupo_edad)


SELECT distinct fichafam  FROM [SIGSALUD].[dbo].[HIS] WHERE SEXO = 'F' AND tipoedad in ('A') AND EDAD BETWEEN 5 AND 9  AND PERIODO = '102017'
AND HSERVICIO IN (select atn_no_medica from @lcatencion_no_medica)





47





 

SELECT distinct fichafam  FROM [SIGSALUD].[dbo].[HIS] WHERE SEXO = 'M' AND tipoedad in ('M', 'D') AND PERIODO = '102017'
AND HSERVICIO IN (select atnmedica from @lcatencion_medica)


SELECT * FROM [SIGSALUD].[dbo].[HIS] WHERE SEXO = 'M' AND tipoedad in ('A') AND EDAD BETWEEN 1 AND 4  AND PERIODO = '102017'
AND HSERVICIO IN (select atnmedica from @lcatencion_medica)




select *
from @lctabla_atm_medica WHERE atencion_medica <> 0  order by sexo, convert(int, grupo_edad)






  





insert @lctabla_atm_medica_final
select sexo, edad, grupo_edad, COUNT(atencion_medica) as atencion_medica from @lctabla_atm_medica
group by sexo, edad, grupo_edad order by sexo, convert(int, grupo_edad)
select * from @lctabla_atm_medica_final


9762





select sexo, grupo_edad, sum(convert(int, atencion_medica)) as atencion_medica, COUNT(edad) as pacientes 
from @lctabla_atm_medica_final group by sexo, grupo_edad order by sexo, convert(int, grupo_edad)






select SUM(convert(int, atencion_medica)) as atm, COUNT(edad) as pacientes from @lctabla_atm_medica_final where sexo = '1' and grupo_edad = '1'



















-- insert @lctabla_atm_no_medica 

select * from @lctabla_ciex



,CASE WHEN HSERVICIO IN (select atn_no_medica from @lcatencion_no_medica) THEN 1 ELSE 0 END AS ATENCION_NO_MEDICA






SELECT SEXO as SEXO_PACIENTE, GRUPO_EDAD, count(atencion_medica) as atencion_medica, count(atencion_no_medica) as atencion_no_medica
  FROM @lctabla_ciex group by sexo, edad, grupo_edad order by sexo, convert(int, grupo_edad), convert(int, edad) asc
  
  
  
  
select * from @lctabla_atm_no_medica 



select sexo, grupo_edad, COUNT(atencion_medica) as atencion_medica, COUNT(atencion_no_medica) as atencion_no_medica  from @lctabla_atm_no_medica 
group by sexo, grupo_edad, atencion_medica, atencion_no_medica  order by sexo, convert(int, grupo_edad) asc






 

/*
SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, GRUPO_EDAD, count(atencion_medica) as atencion_medica, count(atencion_no_medica) as atencion_no_medica
  FROM @lctabla_ciex group by sexo, edad, grupo_edad order by sexo, convert(int, grupo_edad), convert(int, edad) asc
*/



/*
select * from [SIGSALUD].[dbo].[HIS] where EDAD = 0 and PERIODO = '102017'
*/

/* SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, GRUPO_EDAD, count(atencion_medica) as atencion_medica, count(atencion_no_medica) as atencion_no_medica
  FROM @lctabla_ciex group by sexo, edad, grupo_edad order by sexo, convert(int, grupo_edad), convert(int, edad) asc
*/



  
  /*




  TEXT TO lqry_revisar_atenciones noshow
    declare @lcfecha1 datetime = convert(datetime, ?lcfecha_inicio, 101)
    declare @lcfecha2 datetime = convert(datetime, ?lcfecha_final, 101)
    DECLARE @lidpaciente varchar(13) = ?lc_paciente
    declare @lnatencion int = 1
    declare @lc_sexo varchar(1) = (select top 1 case WHEN SEXO = 'M' THEN '1' WHEN SEXO = 'F' THEN '2' ELSE 'N' END FROM [SIGSALUD].[dbo].[ATENCIONC] where PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
    declare @ln_atm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[ATENCIONC] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.MEDICO  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA = 'MED')
    declare @ln_atnm int = (SELECT COUNT(*)  FROM [SIGSALUD].[dbo].[ATENCIONC] A LEFT JOIN [SIGSALUD].[dbo].[MEDICO] B ON B.MEDICO = A.MEDICO  WHERE A.PACIENTE = @lidpaciente AND A.FECHA BETWEEN @lcfecha1  AND @lcfecha2 AND ABREVIATURA <> 'MED')
    declare @lc_grupo_edad varchar(2) = (SELECT top 1 CASE WHEN EDAD < 1 THEN '1' WHEN EDAD BETWEEN 1 AND 4 THEN '2' WHEN EDAD BETWEEN 5 AND 9 THEN '3' WHEN EDAD BETWEEN 10 AND 14 THEN '4' WHEN EDAD BETWEEN 15 AND 19 THEN '5' 
     WHEN EDAD BETWEEN 20 AND 24 THEN '6' WHEN EDAD BETWEEN 25 AND 29 THEN '7' WHEN EDAD BETWEEN 30 AND 34 THEN '8' WHEN EDAD BETWEEN 35 AND 39 THEN '9' WHEN EDAD BETWEEN 40 AND 44 THEN '10'
       WHEN EDAD BETWEEN 45 AND 49 THEN '11' WHEN EDAD BETWEEN 50 AND 54 THEN '12' WHEN EDAD BETWEEN 55 AND 59 THEN '13' WHEN EDAD BETWEEN 60 AND 64 THEN '14' WHEN EDAD >=65  THEN '15'
          ELSE  'ND' END FROM [SIGSALUD].[dbo].[ATENCIONC] WHERE PACIENTE = @lidpaciente AND FECHA BETWEEN @lcfecha1  AND @lcfecha2)
       INSERT INTO [SIGSALUD].[dbo].[TMP_TR_ATEN]([SEXO_PACIENTE],[GRUPO_EDAD],[ATENCION_MEDICO],[ATENCION_NO_MEDICO],[ATENDIDO_POR_MES])
       select @lc_sexo as sexo_paciente, @lc_grupo_edad as grupo_edad, @ln_atm as atencion_medico, @ln_atnm as atencion_no_medico, @lnatencion as atendido_por_mes
*/

