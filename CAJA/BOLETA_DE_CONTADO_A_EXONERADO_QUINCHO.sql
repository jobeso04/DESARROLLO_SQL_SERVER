DECLARE @lidpago varchar(13) = '17001549'

select * from V_PAGOC where PAGOID = @lidpago
select * from PAGOD where PAGOID = @lidpago

update PAGOC set TIPO_PAGO = 'E' where PAGOID = '17001549'

