  declare @lcfecha1 datetime = convert(datetime, '2017-11-01', 101)
   declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
   declare @lccodigo_ipress varchar(8) = '0005498'
  
  declare @lnmes int = month(@lcfecha1)
  declare @lnanio int = year(@lcfecha1)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio 
  DECLARE @lctabla_atm_medica table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), ciex varchar(10))
  DECLARE @lctabla_atm_medica_final table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final_2 table  (sexo varchar(1), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final_3 table  (sexo varchar(1), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atenciones table  (sexo varchar(1), grupo_edad varchar(2), atenciones int)
  
  
 
 INSERT @lctabla_atm_medica 
 SELECT SEXO,  edad, case when tipoedad IN ('2','3') then 1
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
             when tipoedad = '1' and EDAD  > 64 then 15  END AS GRUPO_EDAD, coddiag1 as ciex
                            FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] order by sexo,GRUPO_EDAD 
                            
                            
select SEXO, GRUPO_EDAD, UPPER(SUBSTRING(CIEX,1,3) + '.' +  SUBSTRING(CIEX,4,1)) AS CIEX, COUNT(ciex) as TOTAL_ATENDIDOS from @lctabla_atm_medica 
group by sexo, edad, grupo_edad, ciex
order by sexo, CONVERT(int, grupo_edad)

 

