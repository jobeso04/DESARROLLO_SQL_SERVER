/* para obtener la trama de emergencia */

use SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2016-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2016-01-31', 101)
/* DROP TABLE SEEMEMERGENCIA  */
select '0000005947' AS RENIPRESS, '150118' AS E_UBIG, '21' AS COD_DISA, '00' AS COD_RED, '00' AS COD_MRED, 
   SUBSTRING(CONVERT(varchar(10), fecha,103),1,6) + SUBSTRING(CONVERT(varchar(10), fecha,103),9,2) as fecate, hora as horate, B.HISTORIA as numhc, 
   (case B.TIPO_DOCUMENTO  when 'D' then '1'  when 'CE' then '2'  when  '0' then '0' end) + RTRIM(B.DOCUMENTO) as doc_iden,  '80' as etnia, 
   CASE A.SEGURO WHEN '0'  THEN '01'  WHEN '15'  THEN '02' WHEN '05'  THEN '02' WHEN '15'  THEN '02' WHEN '01'  THEN '02' WHEN '06'  THEN '03' WHEN '02'  THEN '04' WHEN '10'  THEN '05' WHEN '11'  THEN '06' WHEN '07'  THEN '07'
         WHEN '12'  THEN '08'  WHEN '10'  THEN '10' WHEN '08'  THEN '09' WHEN '14'  THEN '11' WHEN '04'  THEN '10' END AS FINANCIA, CASE WHEN B.SEXO = 'M' THEN '1' ELSE '2' END AS SEXO,
          CASE WHEN RTRIM(SUBSTRING(A.EDAD,1,3)) > '000' THEN   convert(int, RTRIM(SUBSTRING(A.EDAD,2,2)))
              when RTRIM(SUBSTRING(A.EDAD,1,6)) > '000a00' THEN  convert(int, RTRIM(SUBSTRING(A.EDAD,5,2)))
              when RTRIM(A.EDAD) between '000a00m00d'  and '000a00m31d' THEN  convert(int, RTRIM(SUBSTRING(A.EDAD,8,2)))
             else '00'   END  AS EDAD, 
      CASE WHEN RTRIM(SUBSTRING(A.EDAD,1,3)) > '000' THEN  '1'
            when RTRIM(SUBSTRING(A.EDAD,1,6)) > '000a00' THEN  '2'
              when RTRIM(A.EDAD) between '000a00m00d'  and '000a00m31d' THEN  '3'
                 else '9'   END  AS tipoedad, B.NOMBRE AS NOMB, (RTRIM(B.PATERNO) + ' ' + RTRIM(B.MATERNO)) AS APELL, RTRIM(A.DIRECCION) AS DIRECC, A.DISTRITO AS UBIG_RESHA, A.DISTRITO AS UBIG_PROCE, A.ACOMPANANTE AS ACOMPANA,
                 (case A.TIPO_DOCUMENTOA  when 'D' then '1'  when 'CE' then '2'  when  '0' then '0' end) + RTRIM(A.DOCUMENTOA) as ADOC_IDEN, MOTIVO_EMERGENCIA AS MOTATEN, A.DISTRITO AS SITOCURREN, C.CODUPSSEEM AS UPS,
     REPLACE(CIEX1,'.', '') AS CODDIAG1, case when TIPO_CIEX1 in ('P', 'D', 'R') then rtrim(TIPO_CIEX1) when len(CIEX1) > 0 then 'D' else '' end  AS TIPDIAG1,
      CASE WHEN CIEX2 = '0' THEN '' ELSE REPLACE(CIEX2,'.', '') END AS CODDIAG2, 
      case when TIPO_CIEX2 in ('P', 'D', 'R') then rtrim(TIPO_CIEX2) when LEN(CIEX2) > 1 then 'D' else '' end  AS TIPDIAG2,
      CASE WHEN CIEX3 = '0' THEN '' ELSE REPLACE(CIEX3,'.', '') END AS CODDIAG3, case when TIPO_CIEX3 in ('P', 'D', 'R') then rtrim(TIPO_CIEX3) when LEN(CIEX3) > 1 then 'D' else '' end  AS TIPDIAG3,
      '' AS CODDIAG4, '' AS TIPDIAG4, PROCE_MED_1 as codcpt1, PROCE_MED_2 as codcpt2, PROCE_MED_3 as codcpt3, '' as codcpt4, CASE WHEN A.CONDICION_EGRESO = '01' THEN '1' WHEN A.CONDICION_EGRESO = '02' THEN '2' WHEN A.CONDICION_EGRESO = '03' THEN '4' WHEN A.CONDICION_EGRESO = '04' THEN '3'
      WHEN A.CONDICION_EGRESO IN ('05', '06', '07', '09') THEN '5' ELSE '01' END AS CONDICION, CASE WHEN FECHA_SAL = '__/__/__' THEN '' WHEN FECHA_SAL IS NULL THEN '' ELSE FECHA_SAL END AS FECEGR,
   CASE WHEN HORA_SAL = '__:__' THEN '' WHEN HORA_SAL IS NULL THEN '' ELSE HORA_SAL END AS HOREGRE, case when destino = '01' then '01' when DESTINO = '02' then '02' when DESTINO IN ('04','08', '11') then '03'
          when DESTINO = '06' then '04' when DESTINO = '03' then '05' else '01' end as DESTINO, '' AS DES_EESS, '' DES_UPS, '' AS CODPSAL, 0 AS OBSERV, '' OFECING, '' OHORING, '' OFECEGRE,
          0 TOTALEST, '' OCAMA, '' OCODPSAL, CASE WHEN DESTINO = '02' THEN REPLACE(CIEX1,'.', '') ELSE '' END AS OCODDIAG1, '' OCODDIAG2, GETDATE() AS FECHAREG, 1 AS ESTADO
          INTO SEEMEMERGENCIA
        FROM  EMERGENCIA A   INNER JOIN PACIENTE B ON B.PACIENTE = A.PACIENTE  INNER JOIN CONSULTORIO C ON A.CONSULTORIO = C.CONSULTORIO  WHERE A.FECHA BETWEEN CONVERT(DATETIME, @lcfecha1, 101) AND CONVERT(DATETIME, @lcfecha2, 101) 
       and a.ESTADO <> '0' and a.CIEX1 <> '0'
       

/* Arreglar bd Paciente, Emergencia  */
/* USE SIGSALUD
update paciente set sexo = 'M' where paciente = '2008091024'
update paciente set sexo = 'M' where paciente in ('2008032353', '2008034114', '2008039434')
update paciente set sexo = 'F' where paciente = '2008080456'
update paciente set sexo = 'M' where sexo = ''
update paciente set sexo = 'M' where sexo = 'G'
update paciente set sexo = 'M' where sexo = '7'
update paciente set sexo = 'M' where sexo = '}'
update paciente set sexo = 'F' where sexo = '9'
update paciente set sexo = 'M' where sexo = '?'
update paciente set sexo = 'M' where paciente in ('2008051925', '2008052047', '2008052050', '2008052398', '2008052399', '2008052616', '2008052735', '2008052754', '2008052954', '2008053496', '2008075137', '2008053536', '2008075137', '2008075168')
update paciente set sexo = 'F' where paciente in ('2008052758', '2008052817', '2008053260')
update EMERGENCIA set SEGURO = '0' where SEGURO IN ('}', '�') 
UPDATE PACIENTE SET DOCUMENTO = '99999999' WHERE DOCUMENTO IN ('R.N.', '01', 'NO RECUERDA', 'NO TIENE', 'NO SABE', '0', 'NO REFIERE', 'EN TRAMITE', 'NO SE ACUERDA', 'NO TRAJO', '00000000', 'TRAMITE', 'NO LO TRAE', 'NO REGISTRA',
     '000000000', '000', '.07656544',  ' RUN 23512831-4',  '             NO SABE', ' NO RECUERDA', ' NO SABE', ' NO SE ACUERDA', ' NO TIENE', '.', 'NO SE RECUERDA', 'R.N', 'RECUERDA', 'NO REDUERDA', 'NO RECUEDA', 'NO RECDUERDA', 'NO RECUERDO', 'NO RECFUERDA', 'NO TIENE DNI', 'NOTIENE', '}', '�', 'NO TRAE', 'NOSABE', '0000000',  'NO LO TIENE', '3', 'NO RECUERSA', '07', 'NO HAY SISTEMA', 'NO RECUERA')
UPDATE PACIENTE SET DOCUMENTO = '53720188'  WHERE DOCUMENTO = '53720188--ARGENTINA'
update EMERGENCIA set EDAD = '000a00m00d ' where EDAD = '00a00m00d'
update PACIENTE set EDAD = '000a00m00d ' where EDAD = '00a00m00d'
update EMERGENCIA set TIPO_DOCUMENTOA = 'D' where TIPO_DOCUMENTOA = ''
update EMERGENCIA set DOCUMENTOA = '99999999' where DOCUMENTOA IN ('NORECUERDA', '', 'NO RECUERDA', 'NO REFIERE', 'no recuerda', 'NO SABE', 'NO RECUERDA', 'NO TIENE', '--', '---------------------', '-----------------------', '.',
  ' NO SE ACUERDA', ' en tramite', '}', '}}', '+', '0') 
  UPDATE EMERGENCIA SET CONDICION_EGRESO = '0' WHERE CONDICION_EGRESO = ''
  update EMERGENCIA set DESTINO = '0' where DESTINO = ''  */