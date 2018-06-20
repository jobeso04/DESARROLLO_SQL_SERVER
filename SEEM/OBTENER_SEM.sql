/* para obtener los egresos */
use SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2016-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2016-01-31', 101)


INSERT INTO [SIGSALUD].[dbo].[SEMEGRESO](HOSPITALIZACION_ID, [renipress],[e_ubig],[e_cdpto],[e_cprov],[e_cdist],[cod_disa],[cod_red],[cod_mred],[numhc],[nomb],[apell],[doc_iden],[etnia],[sexo],[edad],[tipoedad],[ubigeo],[cdpto],[cprov],[cdist],
      [fecing],[fecegr],[totalest],[ups],[condicion],[financia],[coddiag1],[coddiag2],[coddiag3],[coddiag4],[cemorb1],[cemorb2],[codcpt1],[codcpt2],[codcpt3],[codcpt4],[estadio],[valor_t],[valor_n],[valor_m],[tratamien],
        [prof_parto],[fecparto],[rnvivo],[rnmuerto],[codpsal],[fechareg],[estado])
        
SELECT HOSPITALIZACION_ID, '0000005947' AS RENIPRESS, '150118' AS E_UBIG, '15' AS E_CDPTO, '01' AS E_CPROV, '18' AS E_CDIST, '21' AS COD_DISA, '00' AS COD_RED, '00' AS COD_MRED, HISTORIA AS NUMHC, '' AS NOMB, '' AS APELL, '' AS DOC_IDEN, '80' AS ETNIA,
  CASE WHEN SEXO = 'M' THEN '1' ELSE '2' END AS SEXO, EDAD, TIPOEDAD, distrito as UBIGEO, '15' as cdpto, '01' as cprov, '18' as cdist, CONVERT(varchar(10), fecha1,103)  AS FECING, CONVERT(varchar(10), FECHA3,103)  AS FECEGRE,
  DATEDIFF(day, fecha1, FECHA3) AS TOTALEST, '241900' AS UPS, CASE WHEN CONDICION = 'Vivo' THEN '1' ELSE '5' END AS CONDICION, CASE Expr1 WHEN 'ESSALUD' THEN '03' WHEN 'EXONERADO' THEN '11' WHEN 'SOAT' THEN '04' WHEN 'PAGANTE' THEN '01' WHEN 'SIS SUBSIDIADO' THEN '02' END as FINANCIA,
  CASE WHEN SUBSTRING(REPLACE(DX1,'.', ''),1,1) BETWEEN 'A' AND 'T' THEN REPLACE(DX1,'.', '') ELSE '' END AS CODDIAG1, CASE WHEN SUBSTRING(REPLACE(DX2,'.', ''),1,1) BETWEEN 'A' AND 'T' THEN REPLACE(DX2,'.', '') ELSE '' END AS CODDIAG2,
  CASE WHEN SUBSTRING(REPLACE(DX3,'.', ''),1,1) BETWEEN 'A' AND 'T' THEN REPLACE(DX3,'.', '') ELSE '' END AS CODDIAG3, CASE WHEN SUBSTRING(REPLACE(DX4,'.', ''),1,1) BETWEEN 'A' AND 'T' THEN REPLACE(DX4,'.', '') ELSE '' END AS CODDIAG4,
  CASE WHEN SUBSTRING(REPLACE(DX5,'.', ''),1,1) BETWEEN 'V' AND 'Y' THEN REPLACE(DX5,'.', '') ELSE '' END AS CEMORB1, CASE WHEN SUBSTRING(REPLACE(DX6,'.', ''),1,1) BETWEEN 'V' AND 'Y' THEN REPLACE(DX6,'.', '') ELSE '' END AS CEMORB2,
  CASE WHEN SUBSTRING(REPLACE(DX2,'.', ''),1,1) = 'Z' THEN REPLACE(DX2,'.', '') ELSE '' END AS CODCPT1,  CASE WHEN SUBSTRING(REPLACE(DX3,'.', ''),1,1) = 'Z' THEN REPLACE(DX3,'.', '') ELSE '' END AS CODCPT2, CASE WHEN SUBSTRING(REPLACE(DX5,'.', ''),1,1) = 'Z' THEN REPLACE(DX5,'.', '') ELSE '' END AS CODCPT3,
  CASE WHEN SUBSTRING(REPLACE(DX6,'.', ''),1,1) = 'Z' THEN REPLACE(DX6,'.', '') ELSE '' END AS CODCPT4, '' AS ESTADIO, '' AS VALOR_T, '' AS VALOR_N, '' AS VALOR_M, '' AS TRATAMIENTO,  RESPOSANBLE21 as PROF_PARTO,
  CASE WHEN ISDATE(FECHA7) = 1 THEN SUBSTRING(FECHA7,1,6) + '20' + SUBSTRING(FECHA7,7,2) ELSE SUBSTRING(FECHA4,1,6) + CASE WHEN LEN(SUBSTRING(FECHA4,7,4)) = 4 THEN SUBSTRING(FECHA4,7,4) ELSE '20' + SUBSTRING(FECHA4,7,2) END END AS FEC_PARTO, CASE WHEN ISDATE(FECHA4) = 1 THEN 1 ELSE  0 END AS RNVIVO, CASE WHEN ISDATE(FECHA7) = 1 THEN 1 ELSE  0 END AS RNMUERTO, RESPONSABLE1 AS CODPSAL, CONVERT(VARCHAR(10), FECHA1) AS FECHAREG, 1 as estado 
       FROM  V_HOSPITALIZACION WHERE FECHA1 BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)
    
