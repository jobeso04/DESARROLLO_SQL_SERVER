use SIGSALUD
select CIEX4, CIEX5, CIEX6, * from EMERGENCIA where EMERGENCIA_ID = '16018820'

update EMERGENCIA set CIEX4 ='R07.4' where EMERGENCIA_ID = '16018820'
 
eXEC SP_get_emergencia_det_web_10 '16018820'

select * from V_EMERGENCIA_PROCE_ENF_BALANCE_HIDRICO where emergencia_id='16018820' and estado=1 order by fecha, hora


select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id='16018820'