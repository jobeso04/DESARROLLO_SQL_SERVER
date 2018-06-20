use sigsalud

select * from item order by item desc

select CODCPT, SECCION, SUBSECCION from ITEM where SUBSTRING(ITEM,1,1) = '5' and ABREVIATURA is null 

update ITEM set SECCION, SUBSECCION where where SUBSTRING(ITEM,1,1) = '6' and ACTIVO = 7
select CODCPT, SECCION, SUBSECCION,  * from ITEM where SUBSTRING(ITEM,1,1) = '6' and ACTIVO = 7

select CODCPT, SECCION, SUBSECCION,  * from ITEM where CODCPT = '32201' and ACTIVO = 7
select CODCPT, SECCION, SUBSECCION,  * from ITEM where codcpt = '90784' and ACTIVO = '7'
select CODCPT, SECCION, SUBSECCION,  * from ITEM where codcpt = '99283A' and ACTIVO = '7'




select CODCPT, SECCION, SUBSECCION,  * from ITEM where ACTIVO = 7

use SIGSALUD
select CODCPT, SECCION, SUBSECCION, ITEM, NOMBRE, ACTIVO from ITEM where SUBSTRING(ITEM,1,1) = '5' and ABREVIATURA is null 

/* registro : 3335 */


use SIGSALUD
select CODCPT, SECCION, SUBSECCION, ITEM, NOMBRE, ACTIVO from ITEM where SUBSTRING(ITEM,1,1) = '6' and activo = '1'
/* registros : 3591 */


/**************************/
select CODCPT, SECCION, SUBSECCION, ITEM, NOMBRE, ACTIVO from ITEM where SUBSTRING(ITEM,1,1) = '5' and ABREVIATURA is null 
select CODCPT, SECCION, SUBSECCION, ITEM, NOMBRE, ACTIVO from ITEM where SUBSTRING(ITEM,1,1) = '5' and ABREVIATURA is not null order by SECCION desc
select CODCPT, SECCION, SUBSECCION, ITEM, NOMBRE, ACTIVO from ITEM where SUBSTRING(ITEM,1,1) = '6' and activo = '7'

update ITEM set SECCION = '06', SUBSECCION = '12' where  CODCPT = '97535' and  ACTIVO = 7

select item, codcpt, SECCION, SUBSECCION, nombre, ACTIVO from ITEM where  SUBSTRING(ITEM,1,1) = '6'  and  ABREVIATURA is null

select * from PRECIO where ITEM in ('63361', '606955')


