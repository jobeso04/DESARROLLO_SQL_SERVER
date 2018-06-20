use sigsalud
select ITEM, CODCPT, case when substring(codcpt,1,2) = '00' then SUBSTRING(codcpt, 3,3)
                          when substring(codcpt,1,1) = '0' then SUBSTRING(codcpt, 2,4) 
                          else codcpt  end as nvo_codcpt, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '5' and codcpt is not null and codcpt <> '' order by CODCPT asc
                          
                         
update ITEM set CLASIFICADOR = '', agregar_cpt = 'A' where SUBSTRING(item,1,1) = '6' and CODCPT = ''


SELECT  distinct CODCPT, NOMBRE, CLASIFICADOR  FROM ITEM WHERE agregar_cpt = 'A' and SUBSTRING(item,1,1) = '6'
SELECT  * FROM ITEM WHERE agregar_cpt = 'N' and SUBSTRING(item,1,1) = '6'

SELECT  DISTINCT CODCPT, NOMBRE, CLASIFICADOR, GRUPO_RECAUDACION, GRUPO_LIQUIDACION FROM ITEM WHERE agregar_cpt = 'N' and SUBSTRING(item,1,1) = '6'


update ITEM  set agregar_cpt = 'N' WHERE SUBSTRING(item,1,1) = '6' and agregar_cpt is null 


SELECT * FROM ITEM WHERE CODCPT = 'AD012'

UPDATE ITEM SET ACTIVO = '9' WHERE CODCPT = 'AD012'




select distinct  CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' and agregar_cpt = 'A' order by CODCPT asc

                          
select distinct  CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' order by CODCPT asc

select distinct  CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' order by CODCPT asc

select * from ITEM 

alter table item add agregar_cpt varchar(1)

update ITEM set CLASIFICADOR = ''

update item set clasificador = '' where SUBSTRING(item,1,1) = '6'



select * from CLASIFICADOR






select distinct CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '5' order by CODCPT asc



select distinct CODCPT from  item where SUBSTRING(item,1,1) = '5' order by CODCPT asc

select distinct CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '5' and codcpt = '102' order by CODCPT asc

select distinct CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' and codcpt = '105' order by CODCPT asc


select distinct CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' and codcpt = '102' order by CODCPT asc

select distinct CODCPT, NOMBRE, CLASIFICADOR from  item where SUBSTRING(item,1,1) = '6' order by CODCPT asc


