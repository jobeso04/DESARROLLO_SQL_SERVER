use SIGSALUD
select * from ITEM where NOMBRE like '%riesgo qui%'

select * from ITEM where ITEM = '607057' and ACTIVO = '7'
select * from precio where ITEM = '607057'

update precio set precioe = 6.40  where ITEM = '607057'


select SECCION, subseccion, * from ITEM where NOMBRE like 'dosaje%' and abreviatura is null  order by ITEM desc
select SECCION, subseccion, * from ITEM where NOMBRE like 'dosaje%' and activo = '7'  order by ITEM desc
select SECCION, subseccion, * from ITEM where CODCPT = '99241' and activo in ('7', '5')  order by ITEM desc

update ITEM set SECCION = '05', SUBSECCION = '06' where ITEM in ('62716', '62715', '606307', '606306')



select SECCION, subseccion, * from ITEM where codcpt = '90782'  order by ITEM desc
update ITEM set SECCION = '05', SUBSECCION = '06' where codcpt = '99219' and ACTIVO = '7'
update ITEM set SECCION = '05', SUBSECCION = '06' where codcpt = '85018' and ACTIVO = '7'
update ITEM set SECCION = '06', SUBSECCION = '02' where codcpt = '90782' and ACTIVO = '7'

update ITEM set SECCION = '06', SUBSECCION = '02' where codcpt = '90784' and ACTIVO = '7'

update ITEM set SECCION = '06', SUBSECCION = '01' where codcpt = '90780' and ACTIVO = '7'

update ITEM set SECCION = '01', SUBSECCION = '03' where codcpt = '99283A' and ACTIVO = '7'

update ITEM set SECCION = '01', SUBSECCION = '01' where codcpt = '99241' and ACTIVO = '7'






85018

select SECCION, subseccion, codcpt, * from ITEM  where codcpt = '85018' and ACTIVO = '7'

select SECCION, subseccion, codcpt, * from ITEM  where codcpt = '85018' and ACTIVO = '7'


