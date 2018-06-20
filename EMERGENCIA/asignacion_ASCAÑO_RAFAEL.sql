use SIGSALUD
select * from EMERGENCIA where emergencia_id = '16011777'

select * from EMERGENCIA where emergencia_id = '16011786'

/* update EMERGENCIA set quien_atiende = 'SEM' where emergencia_id = '16011786' */


/* En donde aparece el primer medico FZS  - ZAMBRANO SILVA FLORIAN ANTONIO, aparece en MEDICO1  */

SELECT * FROM MEDICO WHERE MEDICO = 'FZS'
use SIGSALUD
select FECHA, HORA, NOMBRE, PACIENTE, HORA_ATEN, MEDICO1, CIEX4, QUIEN_ATIENDE from EMERGENCIA where emergencia_id = '16011795'

select MEDICO, QUIEN_ATIENDE from V_UTILIZAR_HC_EMER_WEB where  emergencia_id = '16011820'


select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id = '16011795'


select * from V_UTILIZAR_HC_EMER_WEB where emergencia_id = '16011820'

select MEDICO, quien_atiende from dbo.EMERGENCIA_DET_WEB where emergencia_id = '16011795'


paciente refiere dolor abdominal tipo retortijon en epigastrio, ademas de nauseas