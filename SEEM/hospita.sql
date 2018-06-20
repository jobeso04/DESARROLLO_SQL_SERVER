/* SELECCIONA EL TIPO DE DOCUMENTO */

use SIGSALUD
select (rtrim(paterno) + ' ' + rtrim(materno)) as apell, nombre as nomb,  (CASE RTRIM(TIPO_DOCUMENTO)  WHEN 'D' THEN '1'  WHEN 'CE' THEN '2'  WHEN  '0' THEN '9' ELSE '0' END) +  RTRIM(DOCUMENTO) as DOC_IDEN 
  from PACIENTE WHERE HISTORIA = '0047854'

select * from PACIENTE

