 USE SIGSALUD
 declare @lcfecha1 datetime = convert(datetime, '2016-07-01', 101)
 declare @lcfecha2 datetime = convert(datetime, '2016-07-31', 101)
 update EMERGENCIA set EDAD = '000a00m00d' where FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101)  and EDAD = '00a00m00d'
 TRUNCATE TABLE dbo.SEEMEMERGENCIA
 INSERT INTO [SIGSALUD].[dbo].[SEEMEMERGENCIA] ([RENIPRESS], [E_UBIG], [COD_DISA],[COD_RED],[COD_MRED],[fecate], [horate],[numhc], [doc_iden],[etnia],
  [FINANCIA],[SEXO], [EDAD],[tipoedad],[NOMB],[APELL],[DIRECC],[UBIG_RESHA],[UBIG_PROCE],[ACOMPANA],[ADOC_IDEN],[MOTATEN],[SITOCURREN],[UPS],[CODDIAG1],[TIPDIAG1],[CODDIAG2],[TIPDIAG2],
  [CODDIAG3],[TIPDIAG3],[CODDIAG4],[TIPDIAG4],[codcpt1],[codcpt2],[codcpt3],[codcpt4],[CONDICION],[FECEGR],[HOREGR],[DESTINO],[DES_EESS],[DES_UPS],[CODPSAL],[OBSERV],
     [OFECING],[OHORING],[OFECEGR],[OHOREGR],[TOTALEST],[OCAMA],[OCODPSAL],[OCODDIAG1],[OCODDIAG2],[FECHAREG],[ESTADO])
 select '0000005947' AS RENIPRESS, '150118' AS E_UBIG, '21' AS COD_DISA, '00' AS COD_RED, '00' AS COD_MRED, 
   SUBSTRING(CONVERT(varchar(10), fecha,103),1,6) + SUBSTRING(CONVERT(varchar(10), fecha,103),9,2) as fecate, hora as horate, B.HISTORIA as numhc,
      (case B.TIPO_DOCUMENTO  when 'D' then '1'  when 'CE' then '2'  when  '0' then '0' end) + LTRIM(substring(RTRIM(B.DOCUMENTO),1,10)) as doc_iden,  '80' as etnia,
         CASE A.SEGURO   WHEN '0'  THEN '01' WHEN '01'  THEN '02'  WHEN '02'  THEN '04'   WHEN '03'  THEN '02'  WHEN '04'  THEN '10'   WHEN '05'  THEN '01'    WHEN '06'  THEN '03'
                                              WHEN '07'  THEN '07'  WHEN '08'  THEN '09'  WHEN '09'  THEN '10'  WHEN '10'  THEN '05'  WHEN '11'  THEN '06' WHEN '12'  THEN '08' WHEN '13'  THEN '11'  WHEN '14'  THEN '11'
                                                WHEN '15'  THEN '02' WHEN '16'  THEN '10' END AS FINANCIA, CASE WHEN B.SEXO = 'M' THEN '1' ELSE '2' END AS SEXO,
          CASE WHEN RTRIM(SUBSTRING(A.EDAD,1,3)) > '000' THEN   convert(int, RTRIM(SUBSTRING(A.EDAD,2,2)))
              when RTRIM(SUBSTRING(A.EDAD,1,6)) > '000a00' THEN  convert(int, RTRIM(SUBSTRING(A.EDAD,5,2)))
              when RTRIM(A.EDAD) between '000a00m00d'  and '000a00m31d' THEN  convert(int, RTRIM(SUBSTRING(A.EDAD,8,2)))
             else '00'   END  AS EDAD,    CASE WHEN RTRIM(SUBSTRING(A.EDAD,1,3)) > '000' THEN  '1'
            when RTRIM(SUBSTRING(A.EDAD,1,6)) > '000a00' THEN  '2'
              when RTRIM(A.EDAD) between '000a00m00d'  and '000a00m31d' THEN  '3'
                 else '9'   END  AS tipoedad,  substring(B.NOMBRE,1,50) AS NOMB, (RTRIM(B.PATERNO) + ' ' + RTRIM(B.MATERNO)) AS APELL, substring(RTRIM(A.DIRECCION),1,100) AS DIRECC, A.DISTRITO AS UBIG_RESHA, A.DISTRITO AS UBIG_PROCE, substring(A.ACOMPANANTE,1,50) AS ACOMPANA,
                 (case A.TIPO_DOCUMENTOA  when 'D' then '1'  when 'CE' then '2'  when  '0' then '0' end) + LTRIM(substring(RTRIM(A.DOCUMENTOA),1,10)) as ADOC_IDEN,
                 MOTIVO_EMERGENCIA AS MOTATEN, A.DISTRITO AS SITOCURREN, C.CODUPSSEEM AS UPS,
     REPLACE(CIEX1,'.', '') AS CODDIAG1, case when TIPO_CIEX1 in ('P', 'D', 'R') then rtrim(TIPO_CIEX1) when len(CIEX1) > 0 then 'D' else '' end  AS TIPDIAG1,
      CASE WHEN CIEX2 IN ('0', '') THEN '' ELSE REPLACE(CIEX2,'.', '') END AS CODDIAG2, 
      case when TIPO_CIEX2 in ('P', 'D', 'R') then rtrim(TIPO_CIEX2) when LEN(CIEX2) > 1 then 'D' else '' end  AS TIPDIAG2, 
CASE WHEN CIEX3 = '0' THEN '' ELSE REPLACE(CIEX3,'.', '') END AS CODDIAG3, case when TIPO_CIEX3 in ('P', 'D', 'R') then rtrim(TIPO_CIEX3) when LEN(CIEX3) > 1 then 'D' else '' end  AS TIPDIAG3,
      '' AS CODDIAG4, '' AS TIPDIAG4, PROCE_MED_1 as codcpt1, PROCE_MED_2 as codcpt2, PROCE_MED_3 as codcpt3, '' as codcpt4, CASE WHEN A.CONDICION_EGRESO = '01' THEN '1' WHEN A.CONDICION_EGRESO = '02' THEN '2' WHEN A.CONDICION_EGRESO = '03' THEN '4' WHEN A.CONDICION_EGRESO = '04' THEN '3'
      WHEN A.CONDICION_EGRESO IN ('05', '06', '07', '09') THEN '5' ELSE '1' END AS CONDICION, 
      CASE WHEN FECHA_SAL = '__/__/__' THEN '' WHEN FECHA_SAL IS NULL THEN '' WHEN SUBSTRING(FECHA_SAL,1,3) = '201' THEN 
              RIGHT(REPLICATE('0', 2)+ SUBSTRING( FECHA_SAL,9,2),2) + '/' + RIGHT(REPLICATE('0', 2)+ SUBSTRING(FECHA_SAL,6,2),2) + '/' +  SUBSTRING( FECHA_SAL,3,2)  
        ELSE   SUBSTRING(CONVERT(varchar(10), FECHA_SAL,103),1,6) + SUBSTRING(CONVERT(varchar(10), FECHA_SAL,103),9,2)  END AS FECEGR,
   CASE WHEN HORA_SAL = '__:__' THEN '' WHEN HORA_SAL IS NULL THEN '' ELSE HORA_SAL END AS HOREGR, case when destino = '01' then '01' when DESTINO = '02' then '02' when DESTINO IN ('04','08', '11') then '03'
          when DESTINO = '06' then '04' when DESTINO = '03' then '05' else '01' end as DESTINO, '' AS DES_EESS, '' DES_UPS, '' AS CODPSAL, 0 AS OBSERV, '' OFECING, '' OHORING, '' OFECEGR, '' OHOREGR,
          0 TOTALEST, '' OCAMA, '' OCODPSAL, CASE WHEN DESTINO = '02' THEN RTRIM(REPLACE(CIEX1,'.', '')) ELSE '' END AS OCODDIAG1, '' OCODDIAG2, GETDATE() AS FECHAREG, 1 AS ESTADO 
   FROM  EMERGENCIA A   INNER JOIN PACIENTE B ON B.PACIENTE = A.PACIENTE  INNER JOIN CONSULTORIO C ON A.CONSULTORIO = C.CONSULTORIO  WHERE A.FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101) 
       and a.CIEX1 <> '0'
SELECT [IDSEEMEMERGENCIA], [RENIPRESS], [E_UBIG], [COD_DISA],[COD_RED],[COD_MRED],[fecate],[horate],[numhc],[doc_iden],[etnia],[FINANCIA],[SEXO],[EDAD],[tipoedad],[NOMB],[APELL],
  [DIRECC],[UBIG_RESHA],[UBIG_PROCE],[ACOMPANA],[ADOC_IDEN],[MOTATEN],[SITOCURREN],[UPS],[CODDIAG1],[TIPDIAG1],[CODDIAG2],[TIPDIAG2],[CODDIAG3],[TIPDIAG3],[CODDIAG4],[TIPDIAG4],
   [codcpt1],[codcpt2],[codcpt3],[codcpt4],[CONDICION],[FECEGR],[HOREGR],[DESTINO],[DES_EESS],[DES_UPS],[CODPSAL],[OBSERV],[OFECING],[OHORING],[OFECEGR],[OHOREGR],[TOTALEST],
   [OCAMA],[OCODPSAL],[OCODDIAG1],[OCODDIAG2],[FECHAREG],[ESTADO] FROM [SIGSALUD].[dbo].[SEEMEMERGENCIA]
       
   /*  
 select emergencia_id, ciex2, tipo_ciex2 from EMERGENCIA where fecha BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) and CIEX1 <> '0' 
 and CIEX2 like 'no%'
 select emergencia_id, ciex2, tipo_ciex2 from EMERGENCIA where fecha BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) and CIEX2 = ''
 update EMERGENCIA set CIEX2 = '0', tipo_ciex2 = '' where EMERGENCIA_ID = '16029083' */
 
 