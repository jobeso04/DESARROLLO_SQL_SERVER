USE SIGSALUD  
ALTER  TABLE [SIGSALUD].[dbo].[USUARIO_WEB] ADD FIRMA_LEGAJOS VARCHAR(15)

declare @lcdni varchar(13) = '32921099'
update USUARIO_WEB set firma_legajos = @lcdni + '.jpg' where DNI = @lcdni


declare @lcdni varchar(13) = '16149036'
update USUARIO_WEB set firma_legajos = @lcdni + '.jpg' where DNI = @lcdni

