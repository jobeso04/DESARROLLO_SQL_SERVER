use SIGSALUD
/* Para el primer producto */
DECLARE  @litem VARCHAR(13) = '170388'
/* select * from ITEM where ITEM = @litem */
select * from KARDEX  where ITEM = @litem  and almacen = 'A' order by FECHA desc 


select * from STOCK  where ITEM =  @litem and almacen IN ('A', 'F')


/* ejecutar en el servidor */
 update KARDEX set  ALMACEN = 'F'  where OPERACION IN ('16352774')
 update stock set STOCK=59500 where ITEM = '170388' and almacen = 'A'
 

 
/* ejecutar en el programa */
/* arreglar_ aprtir del 16-06-2016, stock: 388 */

update KARDEX set STOCK=18768, SALDO = 18528 where OPERACION = '16259397'
update stock set STOCK=18528 where ITEM = '170608' and almacen = 'A'

select * from STOCK  where ITEM = '170608' and almacen = 'A'
