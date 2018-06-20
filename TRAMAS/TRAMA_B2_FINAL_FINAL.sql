 declare @lcfecha1 datetime = convert(datetime, '2017-10-01', 101)
  declare @lcnumeroanio varchar(4) = convert(varchar(4), year(@lcfecha1))
  declare @lcnumeromes varchar(2) = RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@lcfecha1)))),2)
  declare @lcperiodo varchar(6)  = @lcnumeromes + @lcnumeroanio
  declare @lcanio_mes varchar(6) = (select substring(convert(varchar(10), @lcfecha1, 103),7,4)) + (select substring(convert(varchar(10), @lcfecha1, 103),4,2))
  declare @lccodigo_ipress varchar(8) = '00005947'
  DECLARE @lctabla_ciex table  (sexo varchar(1), edad varchar(3), grupo_edad varchar(2), ciex varchar(6))
 insert @lctabla_ciex
  SELECT SEXO, EDAD, case when tipoedad in ('2', '3') then '1' when tipoedad in ('1') and edad between 1 and 4  then '2' when tipoedad in ('1') and edad between 5 and 9 
   then '3' when tipoedad in ('1') and edad between 10 and 14  then '4' 
  when tipoedad in ('1') and edad between 15 and 19  then '5' when tipoedad in ('1') and edad between 20 and 24  then '6' when tipoedad in ('1') and edad between 25 and 29
    then '7'  when tipoedad in ('1') and edad between 30 and 34  then '8' when tipoedad in ('1') and edad between 35 and 39  then '9' when tipoedad in ('1') 
    and edad between 40 and 44  then '10' 
  when tipoedad in ('1') and edad between 45 and 49  then '11' when tipoedad in ('1') and edad between 50 and 54  then '12' when tipoedad in ('1') and edad between 55 and 59  then '13' 
  when tipoedad in ('1') and edad between 60 and 64  then '14' when tipoedad in ('1') and edad >= 65  then '15' end as grupo_edad, CODDIAG1 AS CIEX
   FROM [SIGSALUD].[dbo].[SEEM_MINSA]
  SELECT @lcanio_mes as PERIODO, @lccodigo_ipress as IPRESS, @lccodigo_ipress as UGIPRESS, SEXO as SEXO_PACIENTE, EDAD, GRUPO_EDAD, upper(ciex)  DIAGNOSTICO_DEFINITIVO, COUNT(edad) TOTAL_ATENDIDOS 
    FROM @lctabla_ciex group by sexo, edad, grupo_edad, ciex order by sexo, convert(int, grupo_edad), convert(int, edad) asc
    
    
    
    SELECT * FROM   [SIGSALUD].[dbo].[SEEM_MINSA] WHERE  TIPOEDAD = '4'
    UPDATE [SIGSALUD].[dbo].[SEEM_MINSA] SET TIPOEDAD = '3' WHERE  TIPOEDAD = '4'
    
    SELECT TIPOEDAD FROM   [SIGSALUD].[dbo].[SEEM_MINSA] 
    GROUP BY TIPOEDAD
    
select * from  [SIGSALUD].[dbo].[SEEMEMERGENCIA]
DELETE FROM [SIGSALUD].[dbo].[SEEMEMERGENCIA]
select * into [SIGSALUD].[dbo].[SEEMEMERGENCIA_BAK] from  [SIGSALUD].[dbo].[SEEMEMERGENCIA]

INSERT INTO [SIGSALUD].[dbo].[SEEMEMERGENCIA]
      SELECT [RENIPRESS], [E_UBIG], [COD_DISA],[COD_RED],[COD_MRED],[fecate],[horate],[numhc],[doc_iden],[etnia],[FINANCIA],[SEXO],[EDAD],[tipoedad],[NOMB],[APELL],
      [DIRECC],[UBIG_RESHA],[UBIG_PROCE],[ACOMPANA],[ADOC_IDEN],[MOTATEN],[SITOCURREN],[UPS],[CODDIAG1],[TIPDIAG1],[CODDIAG2],[TIPDIAG2],[CODDIAG3],[TIPDIAG3],[CODDIAG4],[TIPDIAG4],
   [codcpt1],[codcpt2],[codcpt3],[codcpt4],[CONDICION],[FECEGR],[HOREGR],[DESTINO],[DES_EESS],[DES_UPS],[CODPSAL],[OBSERV],[OFECING],[OHORING],[OFECEGR],[OHOREGR],[TOTALEST],
   [OCAMA],[OCODPSAL],[OCODDIAG1],[OCODDIAG2],[FECHAREG],[ESTADO] FROM  [SIGSALUD].[dbo].[SEEM_MINSA]
   