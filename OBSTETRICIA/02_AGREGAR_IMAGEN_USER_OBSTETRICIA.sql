use SIGSALUD
DECLARE @luserobs varchar(13) = '07688476'
update usuario_web set foto = @luserobs + '.jpg' where dni = @luserobs  