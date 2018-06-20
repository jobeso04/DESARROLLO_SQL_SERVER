/* VER CASO DE LOS  Z */
use sigsalud	
declare @lhistoria varchar(13) = '0128759'
SELECT * FROM semegreso where numhc = @lhistoria
select * from HOSPITALIZACION where PACIENTE = (select paciente from PACIENTE where HISTORIA = @lhistoria)