 
INSERT INTO [SIGSALUD].[dbo].[PRECIO]([ITEM],[FECHA],[PRECIOA],[PRECIOB],[PRECIOC],[PRECIOD],[PRECIOE],[PRECIOF],[PRECIOG],[PRECIOH],[PRECIOI],[PRECIOJ],[PRECIOK],
    [COSTO],[UTILIDAD],[PRECIOPUB],[DESCUENTO],[PRECIO],[HORA],[PRECIOX],[PROMEDIO],[SYSINSERT],[SYSUPDATE],[INGRESOID])
    
SELECT ITEM, CONVERT(DATETIME, CONVERT (char(10), getdate(), 102), 102) AS FECHA, PRECIO*1 AS PRECIOA, PRECIO*0.46 AS PRECIOB, PRECIO*0.33 AS PRECIOC, 
0 AS PRECIOD, SIS AS PRECIOE,SOAT AS PRECIOF, 0.1 AS PRECIOG, PRECIO*0.89 AS PRECIOH, 0.1 AS PRECIOI, PRECIO AS PRECIOJ, 0.1 AS PRECIOK, 0 AS COSTO,
0 AS UTIIDAD, 0 AS PRECIOPUB, 0 AS DESCUENTO, 0 AS PRECIO, '' AS HORA, 0 AS PRECIOX, 0 AS PROMEDIO, '' AS SYSINSERT, '' AS SYSUPDATE, '' AS INGRESOID
FROM  [SIGSALUD].[dbo].[ITEM_SIS]






  
USE SIGSALUD
SELECT *  FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]
SELECT * FROM PRECIO ORDER BY IDRECORD DESC  

SELECT * FROM PRECIO WHERE SUBSTRING(ITEM,1,1) = '5' ORDER BY IDRECORD DESC  

select * from ITEM where NOMBRE like '%medici%' and SUBSTRING(ITEM,1,1) = '5'

SELECT * FROM PRECIO WHERE ITEM = '50356'


SELECT * FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND NOMBRE LIKE ''

SELECT * FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '5' AND NOMBRE LIKE '%INCISI%'

codcpt :23930

CODCPT : 23030

select * from V_PRECIO

update ITEM set ACTIVO = '1'  WHERE SUBSTRING(ITEM,1,1) = '6'
update ITEM set ACTIVO = '5' WHERE SUBSTRING(ITEM,1,1) = '5'

select * from TARIFARIO_GENERAL_2017 where NOMBRE like '%papan%'


select ITEM, SERVICIO, CPT, sis into  precio_sis_nuevo from TARIFARIO_GENERAL_2017 

select * from precio_sis
select * from precio_sis_nuevo

select * from ITEM where item in ('63370', '63371')

update ITEM set activo = '7' where item in ('63370', '63371')

select 
select * into tarifa_sis from TARIFARIO_GENERAL_2017 

select * from tarifa_sis where activo = '7'



update tarifa_sis set precio = 7


SELECT * FROM PRECIO SET PRECIOE = (SELECT SIS FROM TARIFARIO_GENERAL_2017 WHERE )

use sigsalud
select * from item   where NOMBRE like '%curacion%' and  SUBSTRING(ITEM,1,1) = '6'

select ACTIVO, * from item   where NOMBRE like '%orina%' and  SUBSTRING(ITEM,1,1) = '6'
select ACTIVO, * from item   where NOMBRE like '%orina%' and  SUBSTRING(ITEM,1,1) = '5'

select * from item_2017

SELECT * FROM PRECIO ORDER BY IDRECORD DESC

SELECT * FROM PRECIO WHERE SUBSTRING(ITEM,1,1) = '6'

DELETE FROM PRECIO WHERE SUBSTRING(ITEM,1,1) = '6'

select * from ITEM  where SUBSTRING(ITEM,1,1) = '5'

select * from ITEM  where NOMBRE like '%plastia%' and SUBSTRING(ITEM,1,1) = '5' AND ACTIVO = '7'

select * from ITEM  where NOMBRE like '%plastia%' and SUBSTRING(ITEM,1,1) = '5' AND ACTIVO = '7'

SELECT * FROM PRECIO WHERE ITEM = '50600' AND ACTIVO = '7'


USE SIGSALUD
SELECT CODCPT, * FROM ITEM WHERE NOMBRE LIKE '%pelvi%'  order by ITEM desc

USE SIGSALUD
SELECT CODCPT, * FROM tarif WHERE NOMBRE LIKE '%pelvi%'  order by ITEM desc



select * from ITEM  where CODCPT = '11655'

udpate 



select * from ITEM  where NOMBRE like '%riesgo%' order by ITEM desc

select * from ITEM  order by ITEM desc

607057    

SELECT * FROM  [SIGSALUD].[dbo].[ITEM_SIS] WHERE NOMBRE LIKE '%RIESGO%'

SELECT '6' + RIGHT('0000' + Ltrim(Rtrim(CONVERT(VARCHAR(4), ID))),4) FROM [SIGSALUD].[dbo].[ITEM_SIS]

UPDATE [SIGSALUD].[dbo].[ITEM_SIS] SET ITEM = '6' + RIGHT('000' + Ltrim(Rtrim(CONVERT(VARCHAR(4), ID))),4)

SELECT * FROM ITEM ORDER 


SELECT * FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO = '7'

UPDATE ITEM SET WHERE SUBSTRING(ITEM,1,1) = '6' AND ACTIVO = '7'