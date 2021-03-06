/* Arreglar Kardex - almacen */ 
use SIGSALUD
declare @litem varchar(13) = '170676'


select * from KARDEX where IDTRANSACCION = '16000154' and ALMACEN = 'A' and TIPO_TRANSACCION <> 'ICO' 
   and fecha between convert(datetime, '2016-04-29',101) +  CAST('08:04:00' AS DATETIME)  and convert(datetime, '2016-04-29',101) +  CAST('08:04:59' AS DATETIME)

select ITEM, SALDO from KARDEX where IDTRANSACCION = '16000154' and ALMACEN = 'A' and TIPO_TRANSACCION <> 'ICO' 
   and fecha between convert(datetime, '2016-04-29',101) +  CAST('08:03:00' AS DATETIME)  and convert(datetime, '2016-04-29',101) +  CAST('08:03:59' AS DATETIME)

select * from STOCK where ITEM = '170081'  and ALMACEN = 'A'
select * from kardex where ITEM = '170081'  and ALMACEN = 'A' order by FECHA desc

use sigsalud	
select * from STOCK where ITEM = '170508'  and ALMACEN = 'f'
select * from kardex where ITEM = '170508'  and ALMACEN = 'f' order by FECHA desc