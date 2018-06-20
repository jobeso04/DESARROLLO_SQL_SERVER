/* Ver a quien fue asignado */
use SIGSALUD
declare @lcemergenciaid varchar(13) = '16014463'
select MEDICO, medico1, quien_atiende from EMERGENCIA where emergencia_id = @lcemergenciaid
SELECT * FROM dbo.V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = @lcemergenciaid