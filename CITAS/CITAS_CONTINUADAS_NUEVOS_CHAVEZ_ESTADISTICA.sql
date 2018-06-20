USE SIGSALUD
DECLARE @lchistoria varchar(13) = '0249014'

/* DECLARE @lchistoria varchar(13) = '0124921' */

declare @lnmes int  = 6
declare @lnanio int  = 2017
SELECT * FROM PACIENTE WHERE HISTORIA = @lchistoria
SELECT * FROM v_CITA  WHERE MONTH(FECHA) >= @lnmes AND YEAR(FECHA) = @lnanio   AND PACIENTE in (SELECT paciente FROM PACIENTE WHERE HISTORIA = @lchistoria) ORDER BY cita_id ASC
SELECT * FROM ATENCIONC WHERE MONTH(FECHA) >= @lnmes AND YEAR(FECHA) = @lnanio  AND HISTORIA = @lchistoria  ORDER BY id_cita ASC


/*
SELECT * FROM ATENCIONC order by ID_CITA desc
*/
 