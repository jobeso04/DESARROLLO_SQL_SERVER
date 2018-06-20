
use sigsalud
select ESTADO, * from EMERGENCIA where NOMBREs like '%condor malca%' order by fecha desc



select * from EMERGENCIA_DET_WEB where emergencia_id = '16043820'

update EMERGENCIA set ESTADO = '3' where emergencia_id = '16043820'