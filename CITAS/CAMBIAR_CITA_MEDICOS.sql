/* cambiar medico en cita */

use sigsalud
declare @lmedico varchar(3) = 'MTL'
declare @lidcita varchar(13) = '160168924'


update CITA set MEDICO = @lmedico where CITA_ID = @lidcita
update archivo_mov set MEDICO = @lmedico where ID_CITA = @lidcita


/*
select * from cita where CITA_ID = @lidcita
select * from ARCHIVO_MOV where ID_CITA = @lidcita
*/