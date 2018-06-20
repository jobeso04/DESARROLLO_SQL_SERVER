use SIGSALUD
/* Para el primer producto */
DECLARE  @litem VARCHAR(13) = '170069'
/* select * from ITEM where ITEM = @litem */
select * from KARDEX  where ITEM = @litem  and almacen = 'A' order by FECHA desc

/* ejecutar en el servidor */
/* update KARDEX set  ALMACEN = 'F'  where OPERACION = '16352710' */
/* ejecutar en el programa */
/* arreglar_ aprtir del 16-06-2016, stock: 388 */

update KARDEX set STOCK=18768, SALDO = 18528 where OPERACION = '16259397'
update stock set STOCK=18528 where ITEM = '170608' and almacen = 'A'

select * from STOCK  where ITEM = '170608' and almacen = 'A'


/* para el segundo producto */
select * from ITEM where ITEM = '170770'
select * from kardex where ITEM = '170770' and ALMACEN = 'F' order by fecha desc
/* ejecutar en el servidor */
update KARDEX set  ALMACEN = 'F', STOCK=145, SALDO = 144 where OPERACION = '16258016'
update stock set STOCK=300 where ITEM = '170770' and almacen = 'A'
/* ejecutar en el programa */
/* arreglar_ aprtir del 16-06-2016, stock: 62 */
select * from STOCK  where ITEM = '170770' and almacen = 'A'


/* para el tercer producto  */
select * from ITEM where ITEM = '170813'
select * from kardex where ITEM = '170813' order by fecha desc
select * from kardex where ITEM = '170813' and ALMACEN = 'F' order by fecha desc
/* ejecutar en el servidor */
update KARDEX set  ALMACEN = 'F', STOCK=1168.00, SALDO = 1162 where OPERACION = '16258017'
/* ejecutar en el programa */
/* arreglar_ aprtir del 16-06-2016, stock: 1271 */
update KARDEX set STOCK=94000.00, SALDO = 93500 where OPERACION = '16259409'
update stock set STOCK=93500 where ITEM = '170813' and almacen = 'A'

select * from STOCK  where ITEM = '170813' and almacen = 'A'
/*  aqui termina */



/* para el cuarto producto  */
select * from ITEM where ITEM = '170822'
select * from kardex where ITEM = '170822' order by fecha desc
select * from kardex where ITEM = '170822' and ALMACEN = 'F' order by fecha desc
/* ejecutar en el servidor */
update KARDEX set  ALMACEN = 'F', STOCK=409, SALDO = 404 where OPERACION = '16258018'
/* ejecutar en el programa */
/* arreglar_ apartir del 16-06-2016, stock: 470 */
/*********************************************************/
/* almacen */
select * from kardex where ITEM = '170822' and ALMACEN = 'A' order by fecha desc

update KARDEX set STOCK=30900.00, SALDO = 30605 where OPERACION = '16259412'
update stock set STOCK=30605 where ITEM = '170822' and almacen = 'A'
select * from STOCK  where ITEM = '170822' and almacen = 'A'
/*  aqui termina */




/* para el quinto producto   */
select * from ITEM where ITEM = '171219'
select * from kardex where ITEM = '171219' order by fecha desc
select * from kardex where ITEM = '171219' order by fecha desc
select * from kardex where ITEM = '171219' and ALMACEN = 'F' order by fecha desc
/* ejecutar en el servidor */
update KARDEX set  ALMACEN = 'F', STOCK=84, SALDO = 83 where OPERACION = '16258019'
/* ejecutar en el programa */
/* arreglar_ apartir del 16-06-2016, stock: 101 */
/*********************************************************/
/* almacen */
select * from kardex where ITEM = '171219' and ALMACEN = 'A' order by fecha desc

update KARDEX set STOCK=1400.00, SALDO = 1200 where OPERACION = '16259446'
update stock set STOCK=1200 where ITEM = '171219' and almacen = 'A'

select * from STOCK  where ITEM = '171219' and almacen = 'A'
/*  aqui termina */






/* almacen */
update KARDEX set STOCK=18768, SALDO = 18528 where OPERACION = '16259397'
update stock set STOCK=18528 where ITEM = '170608' and almacen = 'A'




