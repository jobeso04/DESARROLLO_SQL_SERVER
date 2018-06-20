use SIGSALUD
select ESTADO, MEDICO, MEDICO1, quien_atiende from EMERGENCIA where emergencia_id = '16021297'

update EMERGENCIA set MEDICO = 'LTA', MEDICO1 = 'LTA', QUIEN_ATIENDE = 'LTA', ESTADO = '3' where emergencia_id = '16021297'

select * from MEDICO where NOMBRE like '%tapia%'

select * from USUARIO_WEB where NOMBREs like '%tapia%'