use SIGSALUD
select * from EMERGENCIA where EMERGENCIA_ID = '15055625'
 
eXEC SP_get_emergencia_det_web_10 '15055625'


id_eme_det_web
15072721

select DETALLE from EMERGENCIA_DET_WEB where ID_EME_DET_WEB = '15072425'

/* update EMERGENCIA_DET_WEB set detalle = '02:00 AM PACIENDE DUERME, MANTIENE SUE�O CONSERVADO, CONTINUA CON HIDRATACION. 
04:00 AM SE ADMINISTRA OXACILINA 2 GR EV DILUIDO Y LENTO
06:00 AM PACIENTE DESPIERTA REFIERE SENTIRSE UN POCO MEJOR.
07:30 AM PACIENTE QUEDA EN OBSERVACION , CONTINUA CON HIDRATACION.EV PP
AL CONTROL P/A 100/ 60 mmHg FC: 86 X FR: 18 X T� 37.2 SAT O2 95 % 
DIURESIS: 1 VEZ+' where ID_EME_DET_WEB = '15072425' */

