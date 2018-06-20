  declare @lcfecha1 datetime = convert(datetime, '2017-11-01', 101)
   declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
   declare @lccodigo_ipress varchar(8) = '0005498'
  
  declare @lnmes int = month(@lcfecha1)
  declare @lnanio int = year(@lcfecha1)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio 
  DECLARE @lctabla_atm_medica table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final_2 table  (sexo varchar(1), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atm_medica_final_3 table  (sexo varchar(1), grupo_edad varchar(2), atencion_medica int)
  DECLARE @lctabla_atenciones table  (sexo varchar(1), grupo_edad varchar(2), atenciones int)
  /* masculino */
  declare @lc_sex1_g1 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where SEXO = '1' and tipoedad IN ('2','3') )
  insert  @lctabla_atenciones  values ('1', '1',  @lc_sex1_g1)
  declare @lc_sex1_g2 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 1 and  4)
  insert  @lctabla_atenciones  values ('1', '2',  @lc_sex1_g2)
  declare @lc_sex1_g3 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 5 and  9)
  insert  @lctabla_atenciones  values ('1', '3',  @lc_sex1_g3)
  declare @lc_sex1_g4 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 10 and  14)
  insert  @lctabla_atenciones  values ('1', '4',  @lc_sex1_g4)
  declare @lc_sex1_g5 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 15 and  19)
  insert  @lctabla_atenciones  values ('1', '5',  @lc_sex1_g5)
  declare @lc_sex1_g6 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 20 and  24)
  insert  @lctabla_atenciones  values ('1', '6',  @lc_sex1_g6)
  declare @lc_sex1_g7 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 25 and  29)
  insert  @lctabla_atenciones  values ('1', '7',  @lc_sex1_g7)

  declare @lc_sex1_g8 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 30 and  34)
  insert  @lctabla_atenciones  values ('1', '8',  @lc_sex1_g8)

  declare @lc_sex1_g9 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 35 and  39)
  insert  @lctabla_atenciones  values ('1', '9',  @lc_sex1_g9)

  declare @lc_sex1_g10 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 40 and  44)
  insert  @lctabla_atenciones  values ('1', '10',  @lc_sex1_g10)
  
  declare @lc_sex1_g11 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 45 and  49)
  insert  @lctabla_atenciones  values ('1', '11',  @lc_sex1_g11)

  declare @lc_sex1_g12 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 50 and  54)
  insert  @lctabla_atenciones  values ('1', '12',  @lc_sex1_g12)
  
  declare @lc_sex1_g13 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 55 and  59)
  insert  @lctabla_atenciones  values ('1', '13',  @lc_sex1_g13)

  declare @lc_sex1_g14 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD between 60 and  64)
  insert  @lctabla_atenciones  values ('1', '14',  @lc_sex1_g14)

  declare @lc_sex1_g15 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '1' and tipoedad = '1' and EDAD > 65)
  insert  @lctabla_atenciones  values ('1', '15',  @lc_sex1_g15)
  /*  fin de  masculino */ 

/* para femenino **/
  
  declare @lc_sex2_g1 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where SEXO = '2' and tipoedad IN ('2','3') )
  insert  @lctabla_atenciones  values ('2', '1',  @lc_sex2_g1)
  declare @lc_sex2_g2 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 1 and  4)
  insert  @lctabla_atenciones  values ('2', '2',  @lc_sex2_g2)
  declare @lc_sex2_g3 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 5 and  9)
  insert  @lctabla_atenciones  values ('2', '3',  @lc_sex2_g3)
  declare @lc_sex2_g4 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 10 and  14)
  insert  @lctabla_atenciones  values ('2', '4',  @lc_sex2_g4)
  declare @lc_sex2_g5 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 15 and  19)
  insert  @lctabla_atenciones  values ('2', '5',  @lc_sex2_g5)
  declare @lc_sex2_g6 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 20 and  24)
  insert  @lctabla_atenciones  values ('2', '6',  @lc_sex2_g6)
  declare @lc_sex2_g7 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 25 and  29)
  insert  @lctabla_atenciones  values ('2', '7',  @lc_sex2_g7)

  declare @lc_sex2_g8 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 30 and  34)
  insert  @lctabla_atenciones  values ('2', '8',  @lc_sex2_g8)

  declare @lc_sex2_g9 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 35 and  39)
  insert  @lctabla_atenciones  values ('2', '9',  @lc_sex2_g9)

  declare @lc_sex2_g10 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 40 and  44)
  insert  @lctabla_atenciones  values ('2', '10',  @lc_sex2_g10)
  
  declare @lc_sex2_g11 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 45 and  49)
  insert  @lctabla_atenciones  values ('2', '11',  @lc_sex2_g11)

  declare @lc_sex2_g12 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 50 and  54)
  insert  @lctabla_atenciones  values ('2', '12',  @lc_sex2_g12)
  
  declare @lc_sex2_g13 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 55 and  59)
  insert  @lctabla_atenciones  values ('2', '13',  @lc_sex2_g13)

  declare @lc_sex2_g14 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD between 60 and  64)
  insert  @lctabla_atenciones  values ('2', '14',  @lc_sex2_g14)

  declare @lc_sex2_g15 int =(SELECT COUNT(distinct doc_iden) FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] where  SEXO = '2' and tipoedad = '1' and EDAD > 65)
  insert  @lctabla_atenciones  values ('2', '15',  @lc_sex2_g15)
  


/* fin de femenino **/

  
  
  
 
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
             when tipoedad = '1' and EDAD  > 64 then 15  END AS GRUPO_EDAD, 0 as atencion_medica 
                            FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_NOVIEMBRE] order by sexo,GRUPO_EDAD 
                
 INSERT @lctabla_atm_medica_final                             
select SEXO, EDAD, GRUPO_EDAD, COUNT(EDAD) AS ATENCION_MEDICA from @lctabla_atm_medica
GROUP BY SEXO, EDAD, grupo_edad ORDER BY SEXO, grupo_edad 

INSERT @lctabla_atm_medica_final_2
SELECT SEXO, grupo_edad, SUM(ATENCION_MEDICA) AS atencion_medica FROM @lctabla_atm_medica_final                
GROUP BY SEXO, grupo_edad, atencion_medica
ORDER BY SEXO, grupo_edad

insert @lctabla_atm_medica_final_3
SELECT SEXO, grupo_edad,  sum(atencion_medica) as  atencion_medica FROM @lctabla_atm_medica_final_2
group by sexo, grupo_edad
order by sexo, CONVERT(int, grupo_edad)

select RTRIM(@lcanio_mes) as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, a.SEXO AS SEXO_PACIENTE, a.GRUPO_EDAD, a.ATENCION_MEDICA, b.ATENCIONES  from @lctabla_atm_medica_final_3 a left join @lctabla_atenciones b
on a.sexo = b.sexo and a.grupo_edad = b.grupo_edad
order by a.sexo, CONVERT(int, b.grupo_edad)

