use SIGSALUD

select codcpt, * from ITEM where SUBSTRING(ITEM,1,1) = '6' and CLASIFICADOR = '1.3.3.4.12'

32

select codcpt, * from ITEM where SUBSTRING(ITEM,1,1) = '6' and codcpt like 'd%'

select codcpt, * from ITEM where SUBSTRING(ITEM,1,1) = '6' and  i = '63598'

select codcpt, * from ITEM where SUBSTRING(ITEM,1,1) = '6' and  NOMBRE like 'exodo%'


update ITEM set CLASIFICADOR = '1.3.3.4.12' where CODCPT in (select codcpt from ITEM where SUBSTRING(ITEM,1,1) = '6' and substring(codcpt,1,1) = 'D')


select * from ITEM where SUBSTRING(ITEM,1,1) = '6' and substring(codcpt,1,1) = 'D'

update ITEM set GRUPO_RECAUDACION = '02' where CODCPT in (select codcpt from ITEM where SUBSTRING(ITEM,1,1) = '6' and substring(codcpt,1,1) = 'D')


select * from ITEM where NOMBRE like 'exodon%' order by item desc

update 
180



/* reporte - recibo de ingreso de inges 31/05/2017 ---  29/07/2017
clasificadores,m servicios - detallado */

