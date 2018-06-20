/* Crear Usuario : 99999999 */

DECLARE @lcdni varchar(8) = '99999999'
Declare @lcnombre varchar(60) = 'ADMINISTRADOR DEL SISTEMA'
declare @lunidad_organica varchar(5) = '0200'
declare @lemail varchar(90) = 'jj@jj.com'
declare @lccargo varchar(15) = 'ADMINISTRADOR'
declare @fecha_expiracion datetime = GETDATE() + 500
declare @lcusu_nombre varchar(50) = 'ADMINISTRADOR'
declare @lusu_paterno varchar(50) = 'ADMIN'
declare @lusu_materno varchar(50) = 'ADMIN'
declare @fecha_ultimo_ingreso datetime = getdate()
declare @lestado int = 1
declare @lcclave varchar(30) = '1234'
declare @lcsexo varchar(1) = 'M'
declare @lnsesion int = 1
declare @lcfoto varchar(15) = @lcdni + '.jpg'
declare @lcfirma_legajos varchar(15) = @lcdni + '.jpg'
declare @lcacceso_legajos varchar(1) = '1'

INSERT INTO [SIGSALUD].[dbo].[USUARIO_WEB]([DNI],[NOMBRES],[UNIDAD_ORGANICA],[EMAIL],[CARGO],[FECHA_EXPIRACION],[USU_NOMBRE],[USU_PATERNO],[USU_MATERNO],[FECH_ULT_INGRESO],[ESTADO], [CLAVE],[SEXO],[SESION],[FOTO],[FIRMA_LEGAJOS],[ACCESO_LEGAJOS])
     VALUES (@lcdni, @lcnombre, @lunidad_organica, @lemail, @lccargo, @fecha_expiracion, @lcusu_nombre, @lusu_paterno, @lusu_materno, @fecha_ultimo_ingreso, @lestado, @lcclave, @lcsexo, @lnsesion, @lcfoto, @lcfirma_legajos, @lcacceso_legajos)

