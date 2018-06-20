use SIGSALUD
DECLARE @luserobs varchar(13) = '41605722'
update usuario_web set foto = @luserobs + '.jpg' where dni = @luserobs 