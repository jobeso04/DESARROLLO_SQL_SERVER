  /* REVISOON DE TRAMA C1 */
 /* SELECT [CONSULTORIOS] FROM [SIGSALUD].[dbo].[TMP_MEDICAS_NO_MEDICAS_B1] WHERE TIPO_MEDICAS = '1' */
 
  declare @lcfecha1 datetime = convert(datetime, '2017-11-01', 101)
  declare @lnmes int = month(@lcfecha1)
  declare @lnanio int = year(@lcfecha1)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio 
  DECLARE @lcatencion_medica table (atnmedica varchar(100))
 --  insert @lcatencion_medica 
  SELECT [CONSULTORIOS] FROM [SIGSALUD].[dbo].[TMP_MEDICAS_NO_MEDICAS_B1] WHERE TIPO_MEDICAS = '1'
  
  DECLARE @lctabla_atm_medica table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  -- DECLARE @lctabla_atm_medica_final table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final table  (sexo varchar(1),  grupo_edad varchar(2), atencion_medica int)  
  -- INSERT @lctabla_atm_medica 
  
  
  SELECT SEXO,  edad,
        case when tipoedad IN ('2','3') then 1
             when tipoedad = '1' and EDAD between 1 and  4 then 2
             when tipoedad = '1' and EDAD between 5 and  9 then 3
             when tipoedad = '1' and EDAD between 10 and  14 then 4
             when tipoedad = '1' and EDAD between 15 and  19 then 5
             when tipoedad = '1' and EDAD between 20 and  24 then 6
             when tipoedad = '1' and EDAD between 25 and  29 then 7
             when tipoedad = '1' and EDAD between 30 and  34 then 8
             when tipoedad = '1' and EDAD between 35 and  39 then 9
             when tipoedad = '1' and EDAD between 40 and  44 then 10
             when tipoedad = '1' and EDAD between 45 and  49 then 11
             when tipoedad = '1' and EDAD between 50 and  54 then 12
             when tipoedad = '1' and EDAD between 55 and  59 then 13
             when tipoedad = '1' and EDAD  between 60 and  64 then 14
             when tipoedad = '1' and EDAD  > 64 then 15  END AS GRUPO_EDAD
               FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] order by sexo,edad 
                
               
         
         
            AND CONSULTORIO IN ('3050', '2051', '1094', '2050', '4050', '1096', '1050') order by SEXO, substring(EDAD,1,3)  
            
USE SIGSALUD            
SELECT * FROM   dbo.SEEM_EMERGENCIA_NOVIEMBRE where edad = '0'

SELECT ups FROM   dbo.SEEM_EMERGENCIA_NOVIEMBRE group by ups

SELECT * FROM   dbo.SEEM_EMERGENCIA_NOVIEMBRE where UPS is null

SELECT * FROM   dbo.SEEM_EMERGENCIA_NOVIEMBRE where UPS is null

SELECT * FROM   dbo.SEEM_EMERGENCIA_NOVIEMBRE where apell like 'PALOMINO CHAVEZ%'

230103

230103

select CONSULTORIO, NOMBRE, upstrama,* from CONSULTORIO  where NOMBRE like 'atencion%'
select CONSULTORIO, NOMBRE, upstrama,* from CONSULTORIO  where NOMBRE like 'medicina%'

select CONSULTORIO, NOMBRE, upstrama,* from CONSULTORIO  where upstrama = '230103'


            
/*            
insert into @lctabla_atm_medica_final
SELECT sexo, grupo_edad, COUNT(EDAD) AS atencion_medica  FROM @lctabla_atm_medica   
GROUP BY sexo, edad, GRUPO_EDAD ORDER BY sexo, CONVERT(int, grupo_edad)

select sexo, grupo_edad, sum(atencion_medica) as atm from @lctabla_atm_medica_final
group by sexo, grupo_edad ORDER BY sexo, CONVERT(int, grupo_edad)
*/

