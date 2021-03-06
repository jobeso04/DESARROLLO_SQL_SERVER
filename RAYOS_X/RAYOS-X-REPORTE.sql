use SIGSALUD
declare @lcfecha1 varchar(10) = '2016-04-01'
declare @lcfecha2 varchar(10) = '2016-04-30'

TRUNCATE TABLE [SIGSALUD].[dbo].[tmp_rayosx]
INSERT INTO [SIGSALUD].[dbo].[tmp_rayosx]([RAYOSX],[ITEM],[ZONA],[CANTIDAD]) 
select * from RAYOSX_DETALLE where RAYOSX in (select rayosx from RAYOSX where FECHA between CONVERT(datetime, @lcfecha1, 101)  AND CONVERT(datetime, @lcfecha2, 101) 
    and seguro = '01') order by RAYOSX asc
TRUNCATE TABLE [SIGSALUD].[dbo].[tmp_rayosx2]
INSERT INTO [SIGSALUD].[dbo].[TMP_RAYOSX2](ITEM, CANTIDAD, PRECIO)

select item = '06033', SUM(cantidad) as cantidad, 16.57  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51035', '06033') group by ITEM) as xx
union all
select item = '06098', SUM(cantidad) as cantidad, 24.08  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51013', '06098') group by ITEM) as xx
union all
select item = '06007', SUM(cantidad) as cantidad, 16.57  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50966', '06007') group by ITEM) as xx
union all
select item = '06001', SUM(cantidad) as cantidad, 21.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50998', '06001') group by ITEM) as xx
union all
select item = '06084', SUM(cantidad) as cantidad, 21.13 as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50997', '06084') group by ITEM) as xx
union all
select item = '06085', SUM(cantidad) as cantidad, 16.5 as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50984', '06085') group by ITEM) as xx
union all
select item = '06002', SUM(cantidad) as cantidad, 21.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50999', '06002') group by ITEM) as xx
union all
select item = '06003', SUM(cantidad) as cantidad, 21.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50957', '06003') group by ITEM) as xx
union all
select item = '06017', SUM(cantidad) as cantidad, 29.44  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50971', '06017') group by ITEM) as xx
union all
select item = '06022', SUM(cantidad) as cantidad, 27.87  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50939', '06022') group by ITEM) as xx
union all
select item = '06090', SUM(cantidad) as cantidad, 18.18  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50932', '06090') group by ITEM) as xx
union all
select item = '06012', SUM(cantidad) as cantidad, 18.18  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50948', '06012') group by ITEM) as xx
union all
select item = '50956', SUM(cantidad) as cantidad, 22.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50932', '50956') group by ITEM) as xx
union all
select item = '06023', SUM(cantidad) as cantidad, 22.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('06023') group by ITEM) as xx
union all
select item = '50948', SUM(cantidad) as cantidad, 18.04  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50948') group by ITEM) as xx
union all
select item = '06080', SUM(cantidad) as cantidad, 29.44  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50974', '06080') group by ITEM) as xx
union all
select item = '06079', SUM(cantidad) as cantidad, 23.98  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50977', '06079') group by ITEM) as xx
union all
select item = '06014', SUM(cantidad) as cantidad, 22.30  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51003', '06014') group by ITEM) as xx
union all
select item = '06086', SUM(cantidad) as cantidad, 24.08  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51002', '06086') group by ITEM) as xx
union all
select item = '06015', SUM(cantidad) as cantidad, 24.08  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51025', '06015') group by ITEM) as xx
union all
select item = '06087', SUM(cantidad) as cantidad, 32.71  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50964', '06087') group by ITEM) as xx
union all
select item = '06039', SUM(cantidad) as cantidad, 18.01  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50953', '06039') group by ITEM) as xx
union all
select item = '06072', SUM(cantidad) as cantidad, 24.08  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50954', '06072') group by ITEM) as xx
union all
select item = '06004', SUM(cantidad) as cantidad, 20.04  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50938', '06004') group by ITEM) as xx
union all
select item = '06021', SUM(cantidad) as cantidad, 22.3  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51031', '06021') group by ITEM) as xx
union all
select item = '06013', SUM(cantidad) as cantidad, 22.3  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50991', '06013') group by ITEM) as xx
union all
select item = '06010', SUM(cantidad) as cantidad, 21.3  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50965', '06010') group by ITEM) as xx
union all
select item = '06069', SUM(cantidad) as cantidad, 22.3  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51010', '06069') group by ITEM) as xx
union all
select item = '06070', SUM(cantidad) as cantidad, 0 as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('06070') group by ITEM) as xx
union all
select item = '06006', SUM(cantidad) as cantidad, 16.57  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('50940', '06006') group by ITEM) as xx
union all
select item = '06032', SUM(cantidad) as cantidad, 0  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51009', '06032') group by ITEM) as xx
union all
select item = '06025', SUM(cantidad) as cantidad, 0  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('06025') group by ITEM) as xx
union all
select item = '06073', SUM(cantidad) as cantidad, 20.17  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('06073') group by ITEM) as xx
union all
select item = '51004', SUM(cantidad) as cantidad, 21.13  as precio  from 
(select sum(CANTIDAD) CANTIDAD  from tmp_rayosx where ITEM IN ('51004') group by ITEM) as xx



SELECT * FROM [SIGSALUD].[dbo].[TMP_RAYOSX2] order by ITEM asc
/****************
select * from ITEM where  ITEM IN ('50948', '06023')
select * from ITEM  where NOMBRE like '%NARIZ%'
********************/