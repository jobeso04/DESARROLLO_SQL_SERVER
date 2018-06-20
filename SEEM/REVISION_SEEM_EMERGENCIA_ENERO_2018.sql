/* REVISAR FINAL SEEM EMERGENCIA */
use SIGSALUD
/* select * from dbo.SEEMEMERGENCIA */
SELECT doc_iden, COUNT(doc_iden) as contar  FROM  [SIGSALUD].[dbo].[SEEMEMERGENCIA]  group by doc_iden ORDER BY doc_iden ASC

SELECT TIPOEDAD , COUNT(TIPOEDAD) as contar  FROM  [SIGSALUD].[dbo].[SEEMEMERGENCIA]  group by TIPOEDAD ORDER BY TIPOEDAD ASC


SELECT adoc_iden, COUNT(adoc_iden) as contar  FROM  [SIGSALUD].[dbo].[SEEMEMERGENCIA] group by adoc_iden ORDER BY adoc_iden ASC
SELECT motaten,  COUNT(MOTATEN) as contar  FROM   [SIGSALUD].[dbo].[SEEMEMERGENCIA] group by MOTATEN ORDER BY MOTATEN ASC
SELECT financia,  COUNT(financia) as contar  FROM  [SIGSALUD].[dbo].[SEEMEMERGENCIA]  group by financia ORDER BY financia ASC
SELECT fecate, COUNT(fecate) as contar   FROM   [SIGSALUD].[dbo].[SEEMEMERGENCIA] group by fecate ORDER BY convert(date, fecate, 3) asc
SELECT fecegr, COUNT(fecegr) as contar   FROM   [SIGSALUD].[dbo].[SEEMEMERGENCIA] group by fecegr ORDER BY convert(date, fecegr, 3) desc
SELECT CODPSAL, COUNT(CODPSAL) as contar  FROM  [SIGSALUD].[dbo].[SEEMEMERGENCIA] group by CODPSAL ORDER BY CODPSAL ASC

select IDSEEMEMERGENCIA, CODPSAL  from  dbo.SEEMEMERGENCIA 
SELECT '1' + RTRIM(DNI) + '01' AS CODPSAL FROM MEDICO WHERE MEDICO = 'LAX'

SELECT *  FROM  dbo.SEEMEMERGENCIA  where CODPSAL = '0'

select * from EMERGENCIA where NOMBRE like ''


SELECT dbo.obtener_numeros(DOC_IDEN) as NUMEROS FROM dbo.SEEMEMERGENCIA 

UPDATE dbo.SEEMEMERGENCIA  SET doc_iden = dbo.obtener_numeros(DOC_IDEN)
