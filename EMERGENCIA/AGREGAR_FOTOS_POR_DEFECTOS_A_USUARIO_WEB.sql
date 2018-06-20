/* asignar foto en usuario_web */

use sigsalud
select * from usuario_web where foto is null

update usuario_web set foto = '55555555.jpg' where SEXO = 'M' and foto is null
update usuario_web set foto = '44444444.jpg' where SEXO = 'F' and foto is null

