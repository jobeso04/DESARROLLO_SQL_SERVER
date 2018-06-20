/* Ver si paciente no esta en el sistema de atencion */
use SIGSALUD
DECLARE @lcnombre  varchar(100) = ''
declare @lcpaciente varchar(13) = ''
declare @lchistoria varchar(13) = '231110'
laura vilca david

SELECT * FROM PACIENTE where nombres like 'laura vilca%'

SELECT * FROM PACIENTE where HISTORIA = '0231110' 
SELECT * FROM cita where PACIENTE = '2015256315' order by FECHA desc
SELECT * FROM ATENCIONC where PACIENTE = '2016257989' order by FECHA desc

SELECT * FROM archivo_mov where PACIENTE = '2015256315' order by FECHA desc



