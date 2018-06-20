use SIGSALUD

select SUM(CANTIDAD) AS TOTAL  from ORDEND where ORDENID in (select ordenid from ORDENC 
where FECHA between convert(datetime , '2015-01-01', 101) and convert(datetime , '2015-12-31', 101) and ORIGEN = 'HO') and ITEM IN ('170205',
'170206', '170207', '170531', '170532') GROUP BY ITEM 


select SUM(CANTIDAD) AS TOTAL  from ORDEND where ORDENID in (select ordenid from ORDENC 
where FECHA between convert(datetime , '2015-01-01', 101) and convert(datetime , '2015-12-31', 101) and ORIGEN = 'HO') and ITEM IN ('170224', '170226',
'170227', '170228')  GROUP BY ITEM 





select * from ORDEND where ORDENID = '170239'

USE SIGSALUD	
select * from item where nombre like '%SULFA%'