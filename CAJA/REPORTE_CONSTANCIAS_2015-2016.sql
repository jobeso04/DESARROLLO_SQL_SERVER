use sigsalud
select * from item where SUBSTRING(item,1,1) = '5' and ABREVIATURA is not null order by NOMBRE asc


select * from item where SUBSTRING(item,1,1) = '5' and ABREVIATURA is not null 
and nombre like '%CERTIFICADO%' order by NOMBRE asc

select * from item where SUBSTRING(item,1,1) = '5' and ABREVIATURA is not null 
and nombre like '%NACIMIENTO%' order by NOMBRE asc


select * from ITEM where ITEM = '51195'
select * from PRECIO where ITEM = '51195'

DECLARE @lcfecha1 VARCHAR(10) = '2016-01-01'
DECLARE @lcfecha2 VARCHAR(10) = '2016-12-31'
 declare @lc_lista_de_item  table (iditem varchar(13)); insert @lc_lista_de_item(iditem) values('51201'), ('51202'), ('51203'), ('51192'), ('51193'), ('51194')     
/* declare @lc_lista_de_item  table (iditem varchar(13)); insert @lc_lista_de_item(iditem) values('51199'), ('51062'), ('51204'),('51205')      */
/* declare @lc_lista_de_item  table (iditem varchar(13)); insert @lc_lista_de_item(iditem) values('51197') */


select ITEM, sum(CANTIDAD) as cantidad, PRECIO, SUM(IMPORTE) as recaudado from PAGOD where PAGOID in (select PAGOID from PAGOC where  FECHA between CONVERT(datetime, @lcfecha1, 101) and CONVERT(datetime, @lcfecha2, 101)
AND ESTADO = '2') AND item in (select iditem from @lc_lista_de_item)  group by ITEM, CANTIDAD, PRECIO, IMPORTE


