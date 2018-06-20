select * from CLASIFICADOR  where clasificador = '1.3.2.4.1.99'

select * from CLASIFICADOR  where clasificador = '1.3.3.4.11'

select clasificador  from [SIGSALUD].[dbo].[ITEM] where item in ('51195', '51197', '51198', '51199', '51204', '51211', '51213','51224', '60013','60015','60016',
'60017', '60026', '60062', '63175', '63181', '63590', '63590')

update [SIGSALUD].[dbo].[ITEM] set clasificador = '1.3.2.4.14'  where item in ('51195', '51197', '51198', '51199', '51204', '51211', '51213','51224', '60013','60015','60016',
'60017', '60026', '60062', '63175', '63181', '63590', '63590')


select * from CLASIFICADOR  where clasificador = '1.3.3.2.1'


select * from item where item in ('50000', '50001', '50002', '50003', '50005', '50007', '50008', '50009', '50010', '50011', '63591',
'63591', '63627', '63628', '63629', '63630')

update [SIGSALUD].[dbo].[ITEM] set clasificador = '1.3.2.4.14'  where item in ('51195', '51197', '51198', '51199', '51204', '51211', '51213','51224', '60013','60015','60016',
'60017', '60026', '60062', '63175', '63181', '63590', '63590')
update [SIGSALUD].[dbo].[ITEM] set clasificador = '1.3.3.2.1'  where item in ('50000', '50001', '50002', '50003', '50005', '50007', '50008',
 '50009', '50010', '50011', '63591', '63591', '63627', '63628', '63629', '63630')
update [SIGSALUD].[dbo].[ITEM] set clasificador = '1.3.3.4.11'  where item in ('50035', '50050', '50059')
update [SIGSALUD].[dbo].[ITEM] set clasificador = '1.3.3.4.15'  where item in ('50289', '50293', '50548', '50579', '50581')


use sigsalud

select * from item   where clasificador = '1.3.2.4.14'