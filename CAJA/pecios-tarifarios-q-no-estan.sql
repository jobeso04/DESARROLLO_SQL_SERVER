use sigsalud
select * from item where NOMBRE like '%examen directo%' order by ITEM desc

select * from item where codcpt = '87163' order by ITEM desc
select * from item where codcpt = '87162' order by ITEM desc


select * from PRECIO where ITEM in (select item from item where item = '62930' and ACTIVO = '1')

select * from PRECIO where ITEM in (select item from item where item = '606521' and ACTIVO = '7')


select * from item where codcpt = '87070' order by ITEM desc
select * from item where codcpt = '87162' order by ITEM desc






1 
select * from PRECIO where ITEM in ('606511')

7



select * from PRECIO where ITEM in ('62929', '606520')
