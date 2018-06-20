USE SIGSALUD
SELECT * FROM INGRESOC 

SELECT * FROM ITEM WHERE NOMBRE LIKE '%TRINI%'
SELECT * FROM ITEM WHERE NOMBRE LIKE '%NITRO%'




/* ESTA EN : */

SELECT * FROM ITEM WHERE ITEM = '170374'

select * from INGRESOD where ITEM = '170374'
SELECT * FROM STOCK WHERE ITEM = '170374'
SELECT * FROM kardex  WHERE ITEM = '170374' order by fecha desc

/* lo que debe cambiar */
update INGRESOD set ITEM = '170755' where item = '170374'
update STOCK set STOCK = 0 where item = '170374'
update KARDEX set ITEM = '170755' where item = '170374'
update STOCK set STOCK = 37 where ITEM = '170755' and ALMACEN = 'F'
update STOCK set STOCK = 40 where ITEM = '170755' and ALMACEN = 'A'





/****************************************/

/* DEBERIA ESTAR */
select * from INGRESOD where ITEM = '170755'
SELECT * FROM ITEM WHERE ITEM = '170755'
SELECT * FROM STOCK WHERE ITEM = '170755'
select * from KARDEX where ITEM = '170755' and almacen = 'F'  order by FECHA desc


