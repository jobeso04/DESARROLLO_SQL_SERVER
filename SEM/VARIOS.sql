USE SIGSALUD
SELECT [idkey]
      ,[renipress]
      ,[e_ubig]
      ,[e_cdpto]
      ,[e_cprov]
      ,[e_cdist]
      ,[cod_disa]
      ,[cod_red]
      ,[cod_mred]
      ,[numhc]
      ,[nomb]
      ,[apell]
      ,[doc_iden]
      ,[etnia]
      ,[sexo]
      ,[edad]
      ,[tipoedad]
      ,[ubigeo]
      ,[cdpto]
      ,[cprov]
      ,[cdist]
      ,[fecing]
      ,[fecegr]
      ,[totalest]
      ,[ups]
      ,[condicion]
      ,[financia]
      ,[coddiag1]
      ,[coddiag2]
      ,[coddiag3]
      ,[coddiag4]
      ,[cemorb1]
      ,[cemorb2]
      ,[codcpt1]
      ,[codcpt2]
      ,[codcpt3]
      ,[codcpt4]
      ,[estadio]
      ,[valor_t]
      ,[valor_n]
      ,[valor_m]
      ,[tratamien]
      ,[prof_parto]
      ,[fecparto]
      ,[rnvivo]
      ,[rnmuerto]
      ,[codpsal]
      ,[fechareg]
      ,[estado]
  FROM [SIGSALUD].[dbo].[SEMEGRESO]
  
  
SELECT '0000005947' AS RENIPRESS, '150118' AS E_UBIG, '15' AS E_CDPTO, '01' AS E_CPROV, '18' AS E_CDIST, '21' AS COD_DISA, '00' AS COD_RED, '00' AS COD_MRED, HISTORIA AS NUMHC, '' AS NOMB, '' AS APELL, '' AS DOC_IDEN, '80' AS ETNIA,
  CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, TIPOEDAD, distrito as UBIGEO, '15' as cdpto, '01' as cprov, '18' as cdist, CONVERT(varchar(10), fecha1,103) 
    


SELECT *  FROM [SIGSALUD].[dbo].[SEMEGRESO]
SELECT * FROM HOSPITALIZACION WHERE HISTORIA = '0030632' ORDER BY FECHA1 DESC 
SELECT * FROM V_HOSPITALIZACION WHERE HISTORIA = '0030632' ORDER BY FECHA1 DESC 

SELECT * FROM V_HOSPITALIZACION WHERE FECHA1 BETWEEN CONVERT(DATETIME, '2016-01-01', 101) AND CONVERT(DATETIME, '2016-01-31', 101) ORDER BY FECHA1 ASC 

SELECT * FROM V_HOSPITALIZACION WHERE HISTORIA = '0030632' ORDER BY FECHA1 DESC 
SELECT * FROM PACIENTE  

select * from UBIGEO where UBIGEO = '150118'

declare @lfecha datetime = convert(datetime, '2016-01-12', 101)
select @lfecha
select  CONVERT(varchar(10), @lfecha, 103)