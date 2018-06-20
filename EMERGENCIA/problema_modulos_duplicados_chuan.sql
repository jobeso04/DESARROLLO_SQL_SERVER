declare @lcdni varchar(13) = '10224641'
update usuario_web set foto = @lcdni + '.jpg' where dni = @lcdni
delete from ACCESO_MODULO where id_am = '0224641015000002'
delete from  acceso_menu where id_am = '0224641015000002'
delete from  ACCESO_SUBMENU where id_am = '0224641015000002'
delete from  ACCESO_BOTONES where id_am = '0224641015000002'
update ACCESO_MODULO set PLANTILLA = 'theme-adminflare' where id_am = '1022464115000002'