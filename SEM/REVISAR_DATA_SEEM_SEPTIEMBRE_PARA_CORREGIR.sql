/* REVISAR BD EMERGENCIA */
use SIGSALUD
SELECT doc_iden FROM  dbo.SEEMEMERGENCIA  group by doc_iden ORDER BY doc_iden ASC
SELECT Adoc_iden FROM  dbo.SEEMEMERGENCIA  group by Adoc_iden ORDER BY ADOC_IDEN ASC
SELECT FINANCIA FROM  dbo.SEEMEMERGENCIA  group by FINANCIA ORDER BY FINANCIA ASC

SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, fecate, 3) <   CONVERT(DATETIME, '01/09/16', 3)
SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, fecate, 3) >   CONVERT(DATETIME, '30/09/16', 3)

use SIGSALUD
select * FROM dbo.SEEMEMERGENCIA



SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, FECEGR, 101) = 5
select  * from dbo.SEEMEMERGENCIA order by FECEGR asc

select  * from dbo.SEEMEMERGENCIA order by CONVERT(DATETIME, FECATE, 3)  asc

select  NOMB, APELL, fecate, FECEGR from dbo.SEEMEMERGENCIA order by CONVERT(DATETIME, FECEGR, 3)  asc







 
update dbo.SEEMEMERGENCIA set doc_iden = '0' where doc_iden in ('00', '0EN TRAMITE', '0EXTRANJERA', '0TRAMITE', '1', '100000000', '1000000000', '1000954244',
'122', '199999999', '1E-27787982', '1EN TRAMITE', '1NO HAY REN', '1NO HAY SIS', '1NO RECUERD', '1NO SABE', '1NO SE ACUE', '1NO TIENE', '1NO TRAJO', '1TRAMITE RN', '253.414.374', '254.703.926',
'2BE 1427332', '2NO TRAJO')
update dbo.SEEMEMERGENCIA set DOC_IDEN = '107587555' where DOC_IDEN = '1075875557'
update dbo.SEEMEMERGENCIA set DOC_IDEN = '107682660' where DOC_IDEN = '1076826603'
update dbo.SEEMEMERGENCIA set DOC_IDEN = '110013605' where DOC_IDEN = '11001360521'
update dbo.SEEMEMERGENCIA set DOC_IDEN = '116144073' where DOC_IDEN = '1161440736'
update dbo.SEEMEMERGENCIA set DOC_IDEN = '172744060' where DOC_IDEN = '1727440604'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN is null 
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN in ('1', '1.', '1}', '07658778', '1.', '10+6811571', '10988590', '1NO RECUERD', '1NO RECUERD', '1NO RECUERD', '1NO SE ACUE', '1no se acue',
'1NO RECUERD', '1NO SE ACUE', '1NO RECUERD', '1NO RECUERD', '1NO RECUERD', '1T42841795', '1N', '1NO SABE', '07670377')
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '106930304' where ADOC_IDEN = '1069303041'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '107685041' where ADOC_IDEN = '107+685041'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '106811571' where ADOC_IDEN = '10+6811571'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '107659833' where ADOC_IDEN = '107659833}'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '107664922' where ADOC_IDEN = '1076649227'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '108486855' where ADOC_IDEN = '1084868555'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '109223560' where ADOC_IDEN = '109+223560'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '109670108' where ADOC_IDEN = '1096701088'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '109876507' where ADOC_IDEN = '1098765075'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '116174444' where ADOC_IDEN = '1161744444'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '116217082' where ADOC_IDEN = '1162170827'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '116257527' where ADOC_IDEN = '1162575279'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '122277637' where ADOC_IDEN = '1222776375'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '146684051' where ADOC_IDEN = '146684051}'
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '145167822' where ADOC_IDEN = '145167822}'
UPDATE dbo.SEEMEMERGENCIA SET FECEGR = fecate WHERE FECEGR = ''
UPDATE dbo.SEEMEMERGENCIA SET HOREGR = HORATE WHERE HOREGR = ''



SELECT ADOC_IDEN, LEN(ADOC_IDEN) AS LONGITUD FROM dbo.SEEMEMERGENCIA where LEN(ADOC_IDEN) = 9









