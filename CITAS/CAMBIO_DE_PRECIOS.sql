use SIGSALUD
select * from ITEM where CODCPT = '86703' and activo = '1' 
union all
select * from ITEM where CODCPT = '86592' and activo = '1' order by ITEM desc


use SIGSALUD
select * from ITEM where  activo = '9' order by ITEM desc



use SIGSALUD
select * from ITEM where  SUBSTRING(ITEM,1,1) = '5'




USE SIGSALUD
select * from PRECIO where ITEM in ('62845', '606436')

select * from PRECIO where ITEM in ('62845')




86592 - 8.00

86703 - 15


update PRECIO set PRECIOP = 8  where ITEM in ('62845')
update PRECIO set PRECIOP = 15  where ITEM in ('62875')


select *



ALTER TABLE [dbo].[PRECIO] ADD  PRECIOP NUMERIC(18,3)  DEFAULT ((0)) 
UPDATE PRECIO  SET PRECIOP = 0.00
update PRECIO set PRECIOP = 0  where ITEM in ('62845')
update PRECIO set PRECIOP = 0  where ITEM in ('62875')




SELECT * FROM PRECIO 




ALTER TABLE [dbo].[PRECIO] DROP COLUMN PRECIOQ







update PRECIO set PRECIOA = 8  where ITEM in ('62845')
update PRECIO set PRECIOA = 15  where ITEM in ('62875')


UPDATE PRECIO SET PRECIOB = PRECIOA-PRECIOA*0.3, PRECIOC = PRECIOA-PRECIOA*0.5, PRECIOD = PRECIOA-PRECIOA, PRECIOE = 0, PRECIOF = PRECIOA, PRECIOG = PRECIOA,
    PRECIOH = 0, PRECIOI = PRECIOA, PRECIOJ = PRECIOA, PRECIOK = PRECIOA WHERE item in ('62875', '62845')
select * from PRECIO where ITEM in ('62875', '62845')    

  INSERT INTO [SIGSALUD].[dbo].[CATEGORIA]([CATEGORIA],[NOMBRE],[PORCENTAJE],[TIPO_PAGO],[ACTIVO],[FLAT],[FLAT_LIQUIDA])
       VALUES ('P', 'PROGRAMAS', 1, 'C', 1, '1', '0')

 

