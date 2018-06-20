/* REVISAR BD EMERGENCIA */
use SIGSALUD
SELECT doc_iden FROM  dbo.SEEMEMERGENCIA  group by doc_iden ORDER BY doc_iden ASC
SELECT Adoc_iden FROM  dbo.SEEMEMERGENCIA  group by Adoc_iden ORDER BY ADOC_IDEN ASC
SELECT FINANCIA FROM  dbo.SEEMEMERGENCIA  group by FINANCIA ORDER BY FINANCIA ASC

SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, fecate, 3) <   CONVERT(DATETIME, '01/06/16', 3)
SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, fecate, 3) >   CONVERT(DATETIME, '30/06/16', 3)

select * from SEEMEMERGENCIA where FECEGR = ''
select * from SEEMEMERGENCIA where FECEGR = '01/05/2016'
select * from SEEMEMERGENCIA where FECEGR = '01/07/2016'
select * from SEEMEMERGENCIA where FECEGR in ('01/07/2016', '03/07/2016', '03/07/2016', '01/07/2016')


select FECEGR  FROM dbo.SEEMEMERGENCIA

SELECT * FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, FECEGR, 101) = 5

select  * from dbo.SEEMEMERGENCIA order by FECEGR asc

 
update dbo.SEEMEMERGENCIA set doc_iden = '0' where doc_iden in ('1E-27693539', '1EXTRANJERA', '1NO TIENE D', '1TRAMITE', '224.489.811', '271466023D', '275118270V',
'299999999', '251.221.134', '2106.562.93', '078176943', '078277130', '1', '10', '199999999', '1NO RECUERD', '1NO TIENE', '26.015.739')
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN in ('NULL','1', '07658778', '1.', '1V', '2V24974769', '1N','1NO RECUERD', '1NO SE ACUE')
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN is null 
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '170202810' where ADOC_IDEN in ('1:70202810')
update SEEMEMERGENCIA set fecegr = fecate where FECEGR = '01/05/2016'
delete FROM dbo.SEEMEMERGENCIA WHERE CONVERT(DATE, fecate, 3) <   CONVERT(DATETIME, '01/06/16', 3)
update SEEMEMERGENCIA set fecegr = fecate where FECEGR = '01/05/2016'
update SEEMEMERGENCIA set fecegr = fecate where FECEGR = ''

update SEEMEMERGENCIA set doc_iden = '103485721' where doc_iden = '103485721W'
update SEEMEMERGENCIA set doc_iden = '104000929' where doc_iden = '1040009292'
update SEEMEMERGENCIA set doc_iden = '0' where doc_iden = '106'
update SEEMEMERGENCIA set doc_iden = '106765365' where doc_iden = '1067653650'
update SEEMEMERGENCIA set doc_iden = '106966840' where doc_iden = '10696684'
update SEEMEMERGENCIA set doc_iden = '0' where doc_iden = '1087657+947'
update SEEMEMERGENCIA set doc_iden = '109183354' where doc_iden = '1091833546'
update SEEMEMERGENCIA set doc_iden = '110172585' where doc_iden = '1101725854'
update SEEMEMERGENCIA set doc_iden = '144866112' where doc_iden = '1448661129'
update SEEMEMERGENCIA set doc_iden = '0' where doc_iden = '16157808'
update SEEMEMERGENCIA set doc_iden = '0' where doc_iden in ('1E-27709902', '1E-27715463', '1E-27737060', '1EN TRAMITE', '1NO RECUEDA', '1NO SABE', '1TRAMITE EN', '203195741Y',
'249214867L', '251006654-Z', '2C1VYPZKVG', '2NO RECUERD', '2NO SABE', '2NO SE ACUE', '2NO TRAJO', '2P714051967', '2V24.791.35')
update SEEMEMERGENCIA set adoc_iden = '0' where adoc_iden in ('07654949', '10680779', '1075894445', '1076491262', '1076703312', '1076871441', '1097657444', '1161608227',  '1411463774',
'1419994794', '1440040055', '1442355568', '1444711363',  '14461002', '1454492548', '14671300+9', '1477142', '1700171378', '17020717', '1ROJAS VARG')
update SEEMEMERGENCIA set adoc_iden = '0' where adoc_iden = '1)'
update SEEMEMERGENCIA set adoc_iden = '100112547' where adoc_iden = '1001125474'
update SEEMEMERGENCIA set adoc_iden = '106765292' where adoc_iden = '1067652923'
update SEEMEMERGENCIA set adoc_iden = '106927662' where adoc_iden = '1069276626'


 















1101725854






106

1040009292

