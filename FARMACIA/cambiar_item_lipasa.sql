use SIGSALUD
select * from ITEM where nombre like 'lipasa%'

select * from ITEM where ITEM between '52100' and '59999' order by ITEM asc

select * from item_lipasa 


update ITEM set ACTIVO = '7' where ITEM = '52819'






update item_lipasa  set item = '54588' where item = '52819'




select * into item_lipasa from ITEM where ITEM = '52819'
union all
select * from ITEM where ITEM = '54588'

update ITEM set ITEM = '54588' where ITEM = '52819'

select * from ITEM where activo = '5' order by item asc




select* from ITEM order by ITEM asc
