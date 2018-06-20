DECLARE @lidpago varchar(13) = '17012561'
use SIGSALUD

select * from V_PAGOC where PAGOID = @lidpago
select * from v_PAGOD where PAGOID = @lidpago
/*
update PAGOC set TIPO_PAGO = 'E' where PAGOID = '17012561'
*/
