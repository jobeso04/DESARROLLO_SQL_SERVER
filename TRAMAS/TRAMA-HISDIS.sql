/* OPERACION DE LA TRAMA CE */
use SIGSALUD

/* DROP TABLE TRAMA_CE1    */
   SELECT '005947' AS COD_RENIPRESS,   MT AS TURNO, A.ANIO + RIGHT('00' + Ltrim(Rtrim(A.MES)),2) + RIGHT('00' + Ltrim(Rtrim(A.DIA)),2) as FEC_ATENCION, A.ESTABLEC AS COND_ESTABL, A.ETNIA, A.FICHAFAM AS PACHIS,
  A.FINANCIA, case TIPO_DOC when 'A' then '0' when 'D' then '1'  when 'PN' then '1' when 'CI' then '1' WHEN '' THEN '0' WHEN 'CE' THEN '2' WHEN '0' THEN '0'  else '0' end AS TIPDOC, A.DNI AS DOCID,
  SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 7, 4) + SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 4, 2) +
     SUBSTRING(CONVERT(VARCHAR(10), B.FECHA_NACIMIENTO, 105), 1, 2)   AS FECNAC, CASE A.SEXO WHEN 'M' THEN '1' ELSE '2' END AS SEXO, B.NOMBRES, B.PATERNO AS APPATERNO, B.MATERNO AS APMATERNO, B.DIRECCION,
     '' PESO, '' TALLA, 'NA' AS  GESTANTE, A.PROCEDE AS PROCEDENCIA, A.COD_SERVSA AS  UPS, A.SERVICIO AS COND_SERV, D.semprofesion AS TIPO_PS, '1' TIPO_DOC_PS, SUBSTRING(A.CODHIS,2,8) AS DNI_PS, UPPER(PROF_CITA) AS PS_ATIENDE,
     '' DOSIS1, '' VACUNA1, '' CIE1, '' DOSIS2, '' VACUNA2, '' CIE2, '' DOSIS3, '' VACUNA3, '' CIE3, '' DOSIS4, '' VACUNA4, '' CIE4, '' DOSIS5, '' VACUNA5, '' CIE5, '' DOSIS6, '' VACUNA6, '' CIE6
     
    /* INTO TRAMA_CE1 */
     FROM HIS A 
     INNER JOIN PACIENTE B ON B.HISTORIA = A.FICHAFAM
      INNER JOIN MEDICO C ON C.CODHIS = A.CODHIS 
      inner JOIN ESPECIALIDAD D ON D.ESPECIALIDAD = C.ESPECIALIDAD
           WHERE A.PERIODO = '062016'  ORDER BY TIPO_PS DESC

SELECT COD_RENIPRESS, TURNO, FEC_ATENCION, REFERENCIA, RENIPRESS_REF, UPS_REF, ETINIA, NRO_HC, TIPO_SEGURO, TIPO_DOCIDE, NRO_DI, FEC_NAC, SEXO, NOMBRES, AP_PATERNO, AP_MATERNO, DIRECCION, PROCEDENCIA, GR_INSTR, COND_SER, COND_EST,
CIE10_1, TIPO_DIG1, CIE10_2, TIPO_DIG2, CIE10_3, TIPO_DIG3, TIPO_ACC, DEF1, DEF1_TPGRV, DEF2, DEF2_TPGRV, DEF3, DEF3_TPGRV, DIS1, DIS1_TPGRV, DIS2, DIS2_TPGRV, DIS3, DIS3_TPGRV, TIEMP_DIS, TSTDD, AYUD_TEC, COND_ALTA, COMENTARIOS, 
TP_PERSAL, DOC_PERSAL, DI_PERSAL 

use SIGSALUD
select * from HISdis where periodo = '062016'