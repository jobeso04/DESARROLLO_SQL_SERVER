use sigsalud
/* select * from ITEM where ITEM = '170100'
select * from STOCK where ITEM = '170100' */

select * from KARDEX where ITEM = '170100' and FECHA between convert(datetime, '2016-02-05',101) +  CAST('00:00:00' AS DATETIME) and convert(datetime, '2016-02-08',101) +  CAST('23:59:59' AS DATETIME)
 and ALMACEN = 'F' ORDER BY FECHA ASC

