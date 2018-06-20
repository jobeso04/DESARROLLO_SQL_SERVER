use sigsalud
select * from ingresoc where ingresoid = '17000103'
select * from ingresod where ingresoid = '17000103'

delete from ingresod where ingresoid = '17000103'
delete from ingresoc where ingresoid = '17000103'


17000103 


delete transferenciad where TRANSFERENCIAID = '17000199'
delete transferenciac where TRANSFERENCIAID = '17000199'




use sigsalud
select * from transferenciac where TRANSFERENCIAID = '17000199'
select * from transferenciad where TRANSFERENCIAID = '17000199'


delete transferenciad where TRANSFERENCIAID = '17000199'
delete transferenciac where TRANSFERENCIAID = '17000199'


use sigsalud
select * from KARDEX where ITEM = '170836' order by FECHA desc

select * from KARDEX where ITEM = '171105' order by FECHA desc



17153588 



update ingresoc set estado = '1' where ingresoid = '17000103'


select * from KARDEX where OPERACION = '17153588'



A 	170836    	2017-03-28 11:36:55.933	ITP	17000103  	0.00	200.00	200.00	3.10000	3.10000	0         	 	i1	 	2018-08-01 00:00:00.000	17153588 

use sigsalud
select * from KARDEX where ITEM = '170836' order by FECHA desc

delete from KARDEX where OPERACION = '17153588'


select * from KARDEX where ITEM = '171105' order by FECHA desc



select * from v_KARDEX order by operacion desc