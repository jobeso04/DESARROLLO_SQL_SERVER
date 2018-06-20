/* REVISAR BD EMERGENCIA */
use SIGSALUD
/* REVISAR FECHA DE ATENCION */
declare @lfechainicio varchar(10) = '01/08/16'
declare @lfechafin  varchar(10) = '31/08/16'

update dbo.SEEMEMERGENCIA set doc_iden = '0' where doc_iden is null 
update dbo.SEEMEMERGENCIA set doc_iden = '0' where doc_iden 
in ('0EN TRAMITE', '0NO FIGURA ', '0NO HAY SIS', '0NO TIENE', '0NO TIENE D', '100000000', '1NO REFIERE', '1NO HAY REN', '1NO REFIERE', '1E-27637850', '1E-27684399',
'1E-27746262', '1E-27751668', '1E-27755341', '18619914')
update dbo.SEEMEMERGENCIA  set doc_iden = SUBSTRING(doc_iden,1,9) where len(doc_iden ) >= 10  and SUBSTRING(doc_iden,1,1) = '1'
update dbo.SEEMEMERGENCIA set doc_iden = REPLACE(doc_iden,'.', '') where len(doc_iden ) >= 10  and SUBSTRING(doc_iden,1,1) = '2'
update dbo.SEEMEMERGENCIA set doc_iden = REPLACE(doc_iden,',', '') where len(doc_iden ) >= 10  and SUBSTRING(doc_iden,1,1) = '2'
update dbo.SEEMEMERGENCIA set adoc_iden = '0' where adoc_iden 
in ('1DNI  70761', '1NO TIENE', '1TRAMITES', '0NO TIENE', '0NO TIENE D', '100000000', '1NO REFIERE', '1NO HAY REN', '1NO REFIERE', '1E-27637850', '1E-27684399',
'1E-27746262', '1E-27751668', '1E-27755341', '18619914')
update dbo.SEEMEMERGENCIA  set adoc_iden = SUBSTRING(adoc_iden,1,9) where len(adoc_iden ) >= 10  and SUBSTRING(adoc_iden,1,1) = '1'
update dbo.SEEMEMERGENCIA set adoc_iden = REPLACE(adoc_iden,'.', '') where len(adoc_iden ) >= 10  and SUBSTRING(adoc_iden,1,1) = '2'
update dbo.SEEMEMERGENCIA set adoc_iden = REPLACE(adoc_iden,',', '') where len(adoc_iden ) >= 10  and SUBSTRING(adoc_iden,1,1) = '2'
update dbo.SEEMEMERGENCIA set FECEGR = fecate WHERE fecegr = ''
update dbo.SEEMEMERGENCIA set FECEGR = fecate WHERE CONVERT(DATE, FECEGR, 3) >   CONVERT(DATETIME, '31/08/16', 3)
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN = '1'
update dbo.SEEMEMERGENCIA set horegr = horate WHERE horegr = ''


select * from dbo.SEEMEMERGENCIA

select adoc_iden from dbo.SEEMEMERGENCIA group by adoc_iden