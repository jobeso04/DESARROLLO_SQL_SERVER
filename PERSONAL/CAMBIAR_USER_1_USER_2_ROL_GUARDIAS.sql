use SIGSALUD
declare @lcdni1 varchar(13) = '41281723'
declare @lcdni2 varchar(13) = '40230764'
/* 
SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
 */
UPDATE ACCESO_MODULO SET DNI = @lcdni2 WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
UPDATE ACCESO_MENU SET DNI = @lcdni2 WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
UPDATE ACCESO_SUBMENU  SET DNI = @lcdni2 WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
UPDATE [BDPERSONAL].[dbo].[ServicioDepartUnidad] SET DniAcceso =   @lcdni2 WHERE DniAcceso =   @lcdni1

/* 
SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni1 AND ID_AM = '11020212552901091031'
*/

SELECT * FROM ACCESO_MODULO WHERE DNI = @lcdni2 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_MENU WHERE DNI = @lcdni2 AND ID_AM = '11020212552901091031'
SELECT * FROM ACCESO_SUBMENU WHERE DNI = @lcdni2 AND ID_AM = '11020212552901091031'
