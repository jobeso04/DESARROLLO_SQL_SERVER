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

  