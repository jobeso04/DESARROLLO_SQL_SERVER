/* Ver y eliminar codigos CAs en Procesar Personal */

declare @lcodigo varchar(20) = '084326' 
use bdpersonal
/* DELETE FROM TMPPERSONAL where codigo = @lcodigo
DELETE FROM TMPASISTENCIA where codigo = @lcodigo
DELETE from dbo.TMPHISTORICOPERSONAL where codigo = @lcodigo */


SELECT * FROM TMPPERSONAL where NOMBRE LIKE '%huerta%'
