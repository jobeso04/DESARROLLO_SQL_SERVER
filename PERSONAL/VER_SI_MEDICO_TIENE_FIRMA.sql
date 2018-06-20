/* VERIFICA, SI TIENE FIRMA */

use SIGSALUD

declare @lmedico varchar(3) = 'PLG'
select tiene_firma, * from MEDICO where medico = @lmedico
select medico, * from emergencia where medico = @lmedico order by fecha desc
select medico1, * from emergencia where medico1 = @lmedico order by fecha desc
select quien_atiende, * from emergencia where QUIEN_ATIENDE = @lmedico order by fecha desc
