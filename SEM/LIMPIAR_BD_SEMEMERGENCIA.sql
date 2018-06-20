
use SIGSALUD

select * from dbo.SEEMEMERGENCIA where ADOC_IDEN in ('1NO RECUERD','10') 


select FINANCIA from dbo.SEEMEMERGENCIA group by adoc_iden order by ADOC_IDEN asc

select doc_iden, COUNT(doc_iden) as cnt  from dbo.SEEMEMERGENCIA group by doc_iden order by doc_iden asc


select * from dbo.SEEMEMERGENCIA where ADOC_IDEN in (null, '1', '1N', '1NO RECUERD', '1NO SE ACUE', '2l73y3px7n', '20-841013')

update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN in ('1', '1N', '1NO RECUERD', '1NO SE ACUE', '2l73y3px7n', '20-841013')
update dbo.SEEMEMERGENCIA set ADOC_IDEN = '0' where ADOC_IDEN is null
update dbo.SEEMEMERGENCIA set ADOC_IDEN = substring(ADOC_IDEN,1,1) + substring(ADOC_IDEN,3,8) where CHARINDEX(' ', ADOC_IDEN) > 0 
update dbo.SEEMEMERGENCIA set MOTATEN = '00' where MOTATEN = '99'
update dbo.SEEMEMERGENCIA set MOTATEN = '00' where MOTATEN = '0'
update dbo.SEEMEMERGENCIA set fecegr = '01/01/90' where fecegr = ''
update dbo.SEEMEMERGENCIA set HOREGRE = '00:00' where HOREGRE = ''
update dbo.SEEMEMERGENCIA set DOC_IDEN = '0' where DOC_IDEN IN ('1', '10', '00', '199999999', '1999999999', '1NO RECUERD', '1NO SE RECU', '1NO TIENE', '1NO TIENE R', '1R.N',
   '1R.N.', '2026-013523', '26.015.739', '2AN540916', '2C6ZJ329380', '2M28746993', '2NS1193PD7', '2V24.791.35', '2Y4349900-Q')
