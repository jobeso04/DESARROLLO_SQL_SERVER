/* como obtener el nuevo tarifario */

use SIGSALUD
select ITEM, CODCPT, NOMBRE INTO TARIFARIO_MAYO_2017 from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '1' order by ITEM asc

select ITEM, CODCPT, NOMBRE from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '1' order by ITEM asc


select distinct item, CODCPT, NOMBRE from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '9' order by ITEM asc
select CODCPT, NOMBRE from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '7' order by ITEM asc


SELECT * FROM PRECIO WHERE ITEM IN (select ITEM from ITEM where SUBSTRING(item,1,1) = '6' and ACTIVO = '1')