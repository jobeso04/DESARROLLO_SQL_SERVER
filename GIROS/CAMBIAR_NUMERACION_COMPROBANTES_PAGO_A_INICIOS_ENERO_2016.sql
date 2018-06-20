/* para cambiar los numeros de comprobante de pago a 000001, que se hace a principios de año: enero */

use GIROS
select * from dbo.Nume_CP
UPDATE dbo.Nume_CP SET Ncp_NActual = '000001'
select * from dbo.Nume_CP


