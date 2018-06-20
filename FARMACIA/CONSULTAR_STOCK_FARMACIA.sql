use sigsalud
select * from KARDEX where ITEM = '171248' order by FECHA desc

select * from KARDEX where ITEM = '171151' and almacen = 'C' order by FECHA desc
select * from KARDEX where ITEM = '171151' and almacen = 'F' order by FECHA desc

update KARDEX set ALMACEN = 'X' where OPERACION = '17154500'


F 	171248    	2017-03-28 17:53:51.610	IAN	1717037838	317.00	120.00	437.00	0.04000	0.28800	0         	NULL	NULL	NULL	NULL	17154500 


delete from KARDEX where OPERACION = '17154500'

delete from KARDEX where OPERACION = '17154499'




