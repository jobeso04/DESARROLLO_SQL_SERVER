/* ver acceso de usuario */
use SIGSALUD
declare @luser varchar(13) = ''
select * from usuario where MODULO = 'admision' order by USUARIO asc