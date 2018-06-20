use sigsalud
select * from PAGOC where TIPO_PAGO = 'E' order by FECHA desc

select * from PAGOC WHERE NUMERO = '001-1718060'
select * from PAGOC WHERE NUMERO = '001-1718061'
select * from pagod where PAGOID = '16177083'

select * from pagod where PAGOID = '16177084'

select * from pagod where PAGOID = '16177083'
* el mismo monto agregarlo a descuento y cmbiar el estod



UPDATE PAGOC SET TIPO_PAGO = 'E', DESCUENTO = 6, TOTAL = 0 WHERE NUMERO = '001-1718060'
UPDATE PAGOC SET TIPO_PAGO = 'E', DESCUENTO = 6, TOTAL = 0  WHERE NUMERO = '001-1718061'
UPDATE PAGOD SET descuento = 6, importe = 0 WHERE pagoid = '16177084'
UPDATE PAGOD SET descuento = 6, importe = 0 WHERE pagoid = '16177083'

UPDATE PAGOC SET TIPO_PAGO = 'E' DESCUENTO = 6, TOTAL = 0  WHERE NUMERO = '001-1718061'
