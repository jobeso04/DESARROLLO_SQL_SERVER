use TRAMITE
declare @lexpediente varchar(20) = '16TD0181200'
select * from EXPEDIENTE where EXPEDIENTE = @lexpediente
select * from EXPEDIENTE_DETALLE where EXPEDIENTE = @lexpediente