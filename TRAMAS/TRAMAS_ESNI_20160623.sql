/* OPERACION DE LA TRAMA CE */
use SIGSALUD
DECLARE @lcfecha1 datetime = convert(datetime, '2015-05-01', 101)
DECLARE @lcfecha2 datetime = convert(datetime, '2015-05-31', 101)

SELECT * INTO TRAMA_ESNI_PRE 
 FROM HIS WHERE PERIODO = '052016'  AND CODIGO1 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')
UNION ALL
SELECT * FROM HIS WHERE PERIODO = '052016'  AND CODIGO2 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')
UNION ALL
SELECT * FROM HIS WHERE PERIODO = '052016'  AND CODIGO3 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')
UNION ALL
SELECT * FROM HIS WHERE PERIODO = '052016'  AND CODIGO4 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')
UNION ALL
SELECT * FROM HIS WHERE PERIODO = '052016'  AND CODIGO5 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')
UNION ALL
SELECT * FROM HIS WHERE PERIODO = '052016'  AND CODIGO6 IN ('90713', '90712', '90675', '90676', '90717', '90657', '90701', '90744', '90669', '90681', '90649', '90707', '90708', '90585', '90723')

SELECT  DISTINCT '005947' AS RENIPRESS,   MT AS TURNO, A.ANIO + RIGHT('00' + Ltrim(Rtrim(A.MES)),2) + RIGHT('00' + Ltrim(Rtrim(A.DIA)),2) as FECHA_ATE, A.ESTABLEC AS COND_ESTABL, A.ETNIA, A.FICHAFAM AS PACHIS,
  A.FINANCIA, case TIPO_DOC when 'A' then '0' when 'D' then '1'  when 'PN' then '1' when 'CI' then '1' WHEN '' THEN '0' WHEN 'CE' THEN '2' WHEN '0' THEN '0'  else '0' end AS TIPDOC, A.DNI AS DOCID,
  SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 7, 4) + SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 4, 2) +
     SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 1, 2)   AS FECNAC, CASE A.SEXO WHEN 'M' THEN '1' ELSE '2' END AS SEXO, B.NOMBRES, B.PATERNO AS APPATERNO, B.MATERNO AS APMATERNO, B.DIRECCION,
     '' PESO, '' TALLA, CASE WHEN A.LABCONF2 = 'G' THEN 'S' ELSE 'NA'  END AS  GESTANTE,    A.PROCEDE AS PROCEDENCIA, A.COD_SERVSA AS  UPS, A.SERVICIO AS COND_SERV, D.semprofesion AS TIPO_PS,
      '1' TIPO_DOC_PS, SUBSTRING(A.CODHIS,2,8) AS DNI_PS, UPPER(A.PROF_CITA) AS PS_ATIENDE,            
      CASE WHEN SUBSTRING(A.LABCONF1,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF1 ELSE '' END AS DOSIS1, A.CODIGO1 AS VACUNA1, '' AS CIE1,
        CASE WHEN SUBSTRING(A.LABCONF1,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO1,
      CASE WHEN SUBSTRING(A.LABCONF2,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF2 ELSE '' END AS DOSIS2, A.CODIGO2 AS VACUNA2, '' AS CIE2,
        CASE WHEN SUBSTRING(A.LABCONF2,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO2,
       CASE WHEN SUBSTRING(A.LABCONF3,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF3 ELSE '' END AS DOSIS3, A.CODIGO3 AS VACUNA3, '' AS CIE3,
        CASE WHEN SUBSTRING(A.LABCONF3,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO3,
      CASE WHEN SUBSTRING(A.LABCONF4,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF4 ELSE '' END AS DOSIS4, A.CODIGO4 AS VACUNA4, '' AS CIE4,
        CASE WHEN SUBSTRING(A.LABCONF4,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO4,
      CASE WHEN SUBSTRING(A.LABCONF5,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF5 ELSE '' END AS DOSIS5, A.CODIGO5 AS VACUNA5, '' AS CIE5,
        CASE WHEN SUBSTRING(A.LABCONF5,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO5,
      CASE WHEN SUBSTRING(A.LABCONF6,1,1) IN ('1','2', '3', '4', '5', '6', '7', '8', '9')   THEN A.LABCONF6 ELSE '' END AS DOSIS6, A.CODIGO6 AS VACUNA6, '' AS CIE6,
        CASE WHEN SUBSTRING(A.LABCONF6,1,2)  = 'ST' THEN  'ST' ELSE '' END AS POBRIESGO6
        
   FROM TRAMA_ESNI_PRE A 
     INNER JOIN PACIENTE B ON B.HISTORIA = A.FICHAFAM
      INNER JOIN MEDICO C ON C.CODHIS = A.CODHIS 
      inner JOIN ESPECIALIDAD D ON D.ESPECIALIDAD = C.ESPECIALIDAD ORDER BY PACHIS ASC


   
           
           
/* SELECT * FROM HIS WHERE PERIODO = '052016'            */

SELECT CODIGO1,  CODIGO2,  CODIGO3,  CODIGO4,  CODIGO5,  CODIGO6, LABCONF1, LABCONF2, LABCONF3, LABCONF4, LABCONF5, LABCONF6 FROM HIS WHERE PERIODO = '052016'  AND LABCONF2 = 'G'
UNION ALL
SELECT CODIGO1,  CODIGO2,  CODIGO3,  CODIGO4,  CODIGO5,  CODIGO6, LABCONF1, LABCONF2, LABCONF3, LABCONF4, LABCONF5, LABCONF6 FROM HIS WHERE PERIODO = '052016'  AND LABCONF4 = 'G'
UNION ALL
SELECT CODIGO1,  CODIGO2,  CODIGO3,  CODIGO4,  CODIGO5,  CODIGO6, LABCONF1, LABCONF2, LABCONF3, LABCONF4, LABCONF5, LABCONF6 FROM HIS WHERE PERIODO = '052016'  AND LABCONF5 = 'G'
UNION ALL
SELECT CODIGO1,  CODIGO2,  CODIGO3,  CODIGO4,  CODIGO5,  CODIGO6, LABCONF1, LABCONF2, LABCONF3, LABCONF4, LABCONF5, LABCONF6 FROM HIS WHERE PERIODO = '052016'  AND LABCONF6 = 'G'

