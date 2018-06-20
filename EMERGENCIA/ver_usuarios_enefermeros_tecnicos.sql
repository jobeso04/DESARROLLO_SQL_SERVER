

use SIGSALUD
select * from USUARIO_WEB where DNI = '44561085'
union all
select * from USUARIO_WEB where DNI = '40650213'
union all
select * from USUARIO_WEB where DNI = '40450578'

select * from USUARIO_WEB where NOMBRES like 'villoslada%'


use SIGSALUD
UPDATE USUARIO_WEB SET CARGO = 'TECNICO' where DNI = '44561085'


select * from v_emergencia where emergencia_id