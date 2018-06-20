use sigsalud

declare @lchistoria_destino varchar(13) = '0093071'
declare @lid_emergencia varchar(15) = '17003115'

update [SIGSALUD].[dbo].[EMERGENCIA] set
 PACIENTE = (select PACIENTE from paciente where HISTORIA = @lchistoria_destino),
 HISTORIA = (select HISTORIA from paciente where HISTORIA = @lchistoria_destino), 
 PATERNO = (select PATERNO from paciente where HISTORIA = @lchistoria_destino),
 MATERNO = (select MATERNO from paciente where HISTORIA = @lchistoria_destino),
 NOMBRE = (select nombre from paciente where HISTORIA = @lchistoria_destino),
 NOMBRES = (select nombres from paciente where HISTORIA = @lchistoria_destino)  where EMERGENCIA_ID = @lid_emergencia
