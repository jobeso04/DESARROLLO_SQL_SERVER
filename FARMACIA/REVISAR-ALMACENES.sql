/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ALMACEN]
      ,[ITEM]
      ,[STOCK]
      ,[PROMEDIO]
      ,[UBICACION]
      ,[MINIMO]
  FROM [SIGSALUD].[dbo].[STOCK]
  
  select * from [SIGSALUD].[dbo].[ALMACEN]
  
  
  
  select ITEM from [SIGSALUD].[dbo].[STOCK] where almacen = 'F' group by ITEM 
  
  select * from [SIGSALUD].[dbo].[TRANSFERENCIAC] where TRANSFERENCIAID = '17000992'
  select * from [SIGSALUD].[dbo].[TRANSFERENCIAd] where TRANSFERENCIAID = '17000992'
  
  


INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
    select 'SO' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO FROM 
[SIGSALUD].[dbo].[v_TRANSFERENCIAd] where TRANSFERENCIAID = '17000992'   

  
select ITEM, COUNT(item) from  [SIGSALUD].[dbo].[STOCK]  where ALMACEN = 'A' group by ITEM 
order by COUNT(item) desc
1454


select * from [SIGSALUD].[dbo].[STOCK] where item = '171115' ORDER BY ALMACEN 


select ITEM from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'

1452


group by ALMACEN, ITEM 



select ITEM from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'

select ITEM from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN <> 'SO' AND ALMACEN = 'F'


select ITEM from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'SO'
42

select ITEM from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F' AND ITEM NOT IN (select ITEM from  [SIGSALUD].[dbo].[STOCK]  where ALMACEN = 'SO')


SELECT 1452 - 42
-- 42
-- 1410




SELECT *   FROM [SIGSALUD].[dbo].[ALMACEN] WHERE ALMACEN IN ('CI', 'GO', 'PE', 'ME', 'NE', 'UC', 'EM', 'AM') 

SELECT *   FROM [SIGSALUD].[dbo].[ALMACEN] WHERE NOMBRE LIKE 'C.%'


/* AGREGAR LO FALTANTE */

INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])


    select 'SO' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO FROM 
[SIGSALUD].[dbo].[v_TRANSFERENCIAd] where TRANSFERENCIAID = '17000992'   

/* YA EJECUTADO */
INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
select 'SO' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F' AND ITEM NOT IN (select ITEM from  [SIGSALUD].[dbo].[STOCK]  where ALMACEN = 'SO')


INSERT INTO [SIGSALUD].[dbo].[STOCK]([ALMACEN],[ITEM],[STOCK],[PROMEDIO],[UBICACION],[MINIMO])
select 'CI' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'GO' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'PE' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'ME' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'NE' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'UC' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'EM' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'
UNION ALL
select 'AM' AS ALMACEN, ITEM, 0 AS STOCK, 0 AS PROMEDIO, '0' AS UBICACION, 0 AS MINIMO from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'


11608


SELECT 1451*8

select  * from  [SIGSALUD].[dbo].[STOCK]  
where ALMACEN = 'F'



SELECT *   FROM [SIGSALUD].[dbo].[ALMACEN] WHERE ALMACEN IN ('CI', 'GO', 'PE', 'ME', 'NE', 'UC', 'EM', 'AM') 



