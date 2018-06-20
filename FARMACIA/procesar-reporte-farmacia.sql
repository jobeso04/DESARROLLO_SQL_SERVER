use SIGSALUD

SELECT ITEM  FROM [SIGSALUD].[dbo].[ITEM] WHERE SUBSTRING(ITEM,1,2) = '17'

 SELECT
        '1138' codigo_eje,      -- [varchar](255) Codigo de ejecutora
        '05947' codigo_pre, -- [varchar](11) Codigo de Establecimiento de Salud      
        codigo_med,             -- [varchar](7) Codigo de medicamento segun SISMED
        precio,                     --  [numeric](18, 2) Precio de Venta
        stock_fin ,                --  [numeric](8, 0)  Stock del producto de todo el Establecimiento de Salud
        stock_fin1,                --  [numeric](8, 0)  Stock del producto del lote con fecha de expiración mas próximo
        fec_exp,                    -- [date] '2019-10-01' Fecha de expiración mas próximo
  getdate() fechap,     -- Fecha de procesamiento de la consulta 
     FROM    table
     
TRUNCATE TABLE [SIGSALUD].[dbo].[TCENARE]
CREATE TABLE [SIGSALUD].[dbo].[TCENARE_PRE] (
    ITEM VARCHAR(13),
    NOMBRE VARCHAR(250),
    CODIGO_MED VARCHAR(10),
    PRECIO NUMERIC(18,2),
    STOCK_FIN NUMERIC(18,0),
    STOCK_FIN1 NUMERIC(18,0),
    FECHA_VENCIMIENTO VARCHAR(10))

CREATE TABLE [SIGSALUD].[dbo].[TCENARE_PRE_TT] (
    ITEM VARCHAR(13),
    NOMBRE VARCHAR(250),
    CODIGO_MED VARCHAR(10),
    PRECIO NUMERIC(18,2),
    STOCK_FIN NUMERIC(18,0),
    STOCK_FIN1 NUMERIC(18,0),
    FECHA_VENCIMIENTO VARCHAR(10))


    
CREATE TABLE [SIGSALUD].[dbo].[TCENARE_POST] (
    CODIGO_EJE VARCHAR(50),
    CODIGO_PRE VARCHAR(50),
    ITEM VARCHAR(13),
    NOMBRE VARCHAR(250),
    CODIGO_MED VARCHAR(10),
    PRECIO NUMERIC(18,2),
    STOCK_FIN NUMERIC(18,0),
    STOCK_FIN1 NUMERIC(18,0),
    FECHA_VENCIMIENTO VARCHAR(10))
    
/** INICIO  ***/    
TRUNCATE TABLE [SIGSALUD].[dbo].[TCENARE_PRE]
TRUNCATE TABLE [SIGSALUD].[dbo].[TCENARE_POST]
TRUNCATE TABLE [SIGSALUD].[dbo].[TCENARE_PRE_TT]
INSERT INTO [SIGSALUD].[dbo].[TCENARE_PRE]([ITEM],[NOMBRE],[CODIGO_MED],[STOCK_FIN],[STOCK_FIN1])
  SELECT  ITEM, UPPER(nombre) NOMBRE, SISMED AS CODIGO_MED, 
        MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) +  MAX( CASE almacen WHEN 'A' THEN stock ELSE 0 END ) + 
         MAX( CASE almacen WHEN 'C' THEN stock ELSE 0 END )as  STOCK_FIN,
                   MAX( CASE almacen WHEN 'F' THEN stock ELSE 0 END ) STOCK_FIN1 
                        FROM [SIGSALUD].[dbo].[V_STOCK] GROUP BY item, nombre, sismed
INSERT INTO [SIGSALUD].[dbo].[TCENARE_PRE_TT]([CODIGO_MED],[STOCK_FIN],[STOCK_FIN1])                        
select CODIGO_MED, SUM(STOCK_FIN) as STOCK_FIN, sum(STOCK_FIN1) as STOCK_FIN1 from [SIGSALUD].[dbo].[TCENARE_PRE] 
where CODIGO_MED not in ('', '0') group by CODIGO_MED order by CODIGO_MED asc
update [SIGSALUD].[dbo].[TCENARE_PRE_TT]  set ITEM = X.ITEM FROM [SIGSALUD].[dbo].[TCENARE_PRE_TT] join (SELECT ITEM, INTERFASE2  FROM [SIGSALUD].[dbo].[ITEM] WHERE SUBSTRING(ITEM,1,2) = '17') as X 
on TCENARE_PRE_TT.CODIGO_MED = X.INTERFASE2
INSERT INTO [SIGSALUD].[dbo].[TCENARE_POST]([CODIGO_EJE],[CODIGO_PRE],[ITEM],[NOMBRE],[CODIGO_MED],[PRECIO],[STOCK_FIN],[STOCK_FIN1])
SELECT '1138' CODIGO_EJE,  '05947' CODIGO_PRE, M.ITEM,  M.NOMBRE, M.CODIGO_MED, F.PRECIO, M.STOCK_FIN, M.STOCK_FIN1 from (SELECT * FROM [SIGSALUD].[dbo].[TCENARE_PRE_TT]) M, (SELECT P.ITEM, P.Precio FROM [SIGSALUD].[dbo].[PRECIO] P 
INNER JOIN [SIGSALUD].[dbo].[ITEM] I ON I.Item=P.Item INNER JOIN [SIGSALUD].[dbo].[STOCK] S ON S.Item=P.Item 
WHERE p.fecha=(select max(fecha) from [SIGSALUD].[dbo].[PRECIO] X where P.item=X.item group by item) 
and p.IDRECORD=(select max(X.IDRECORD) from [SIGSALUD].[dbo].[PRECIO] X where X.Fecha=P.Fecha and P.item=X.item group by item)
 AND Almacen='F' AND Modulo='FARMACIA') F  WHERE  M.ITEM = F.ITEM
update [SIGSALUD].[dbo].[TCENARE_POST] set FECHA_VENCIMIENTO = convert(varchar(10), x.fecha_vencimiento, 103)
FROM [SIGSALUD].[dbo].[TCENARE_POST] join (SELECT item, FECHA_VENCIMIENTO FROM INGRESOD where FECHA_VENCIMIENTO >= GETDATE()) as x on TCENARE_POST.ITEM = x.ITEM


SELECT [codigo_eje],[codigo_pre], [codigo_med],[precio],[stock_fin],[stock_fin1],convert(datetime, [FECHA_VENCIMIENTO], 103) as fec_exp, GETDATE() as fechap   FROM [SIGSALUD].[dbo].[TCENARE_POST]
ORDER BY CODIGO_MED 
/*** FINAL **/

SELECT * FROM [SIGSALUD].[dbo].[TCENARE_POST]                        


select ITEM, INTERFASE2 from [SIGSALUD].[dbo].[ITEM] where INTERFASE2 = '00091'                        

USE SIGSALUD

update [SIGSALUD].[dbo].[TCENARE_PRE_TT]  set ITEM = X.ITEM FROM [SIGSALUD].[dbo].[TCENARE_PRE_TT] join (SELECT ITEM, INTERFASE2  FROM [SIGSALUD].[dbo].[ITEM] WHERE SUBSTRING(ITEM,1,2) = '17') as X 
on TCENARE_PRE_TT.CODIGO_MED = X.INTERFASE2


update [SIGSALUD].[dbo].[TCENARE_POST]  set FECHA_VENCIMIENTO = '' where FECHA_VENCIMIENTO is null




SELECT [codigo_eje],[codigo_pre], [nombre] ,[codigo_med],[precio],[stock_fin],[stock_fin1],convert(datetime, [FECHA_VENCIMIENTO], 103) as fec_exp, GETDATE() as fechap   FROM [SIGSALUD].[dbo].[TCENARE_POST]







update [SIGSALUD].[dbo].[TCENARE_POST] set FECHA_VENCIMIENTO = convert(varchar(10), x.fecha_vencimiento, 103)
FROM [SIGSALUD].[dbo].[TCENARE_POST] join (SELECT item, FECHA_VENCIMIENTO FROM INGRESOD where FECHA_VENCIMIENTO >= GETDATE()) as x on TCENARE_POST.ITEM = x.ITEM


update [SIGSALUD].[dbo].[TCENARE_POST]  set FECHA_VENCIMIENTO = '' where FECHA_VENCIMIENTO is null
SELECT [codigo_eje],[codigo_pre], [nombre] ,[codigo_med],[precio],[stock_fin],[stock_fin1],convert(datetime, [FECHA_VENCIMIENTO], 103) as fec_exp, GETDATE() as fechap   FROM [SIGSALUD].[dbo].[TCENARE_POST]







SELECT * FROM [SIGSALUD].[dbo].[TCENARE_POST]                         
                        
TRUNCATE TABLE  [SIGSALUD].[dbo].[TCENARE_POST]                        
INSERT INTO [SIGSALUD].[dbo].[TCENARE_POST]([CODIGO_EJE],[CODIGO_PRE],[ITEM],[NOMBRE],[CODIGO_MED],[PRECIO],[STOCK_FIN],[STOCK_FIN1])
SELECT '1138' CODIGO_EJE,  '05947' CODIGO_PRE, M.ITEM,  M.NOMBRE, M.CODIGO_MED, F.PRECIO, M.STOCK_FIN, M.STOCK_FIN1 from (SELECT * FROM [SIGSALUD].[dbo].[TCENARE_PRE]) M, (SELECT P.ITEM, P.Precio FROM [SIGSALUD].[dbo].[PRECIO] P 
INNER JOIN [SIGSALUD].[dbo].[ITEM] I ON I.Item=P.Item INNER JOIN [SIGSALUD].[dbo].[STOCK] S ON S.Item=P.Item 
WHERE p.fecha=(select max(fecha) from [SIGSALUD].[dbo].[PRECIO] X where P.item=X.item group by item) 
and p.IDRECORD=(select max(X.IDRECORD) from [SIGSALUD].[dbo].[PRECIO] X where X.Fecha=P.Fecha and P.item=X.item group by item)
 AND Almacen='F' AND Modulo='FARMACIA') F  WHERE  M.ITEM = F.ITEM
 
 
 
 
 
update [SIGSALUD].[dbo].[TCENARE_POST] set FECHA_VENCIMIENTO = convert(varchar(10), x.fecha_vencimiento, 103)
FROM [SIGSALUD].[dbo].[TCENARE_POST] join (SELECT item, FECHA_VENCIMIENTO FROM INGRESOD where FECHA_VENCIMIENTO >= GETDATE()) as x on TCENARE_POST.ITEM = x.ITEM
update [SIGSALUD].[dbo].[TCENARE_POST]  set FECHA_VENCIMIENTO = '' where FECHA_VENCIMIENTO is null
SELECT [codigo_eje],[codigo_pre], [nombre] ,[codigo_med],[precio],[stock_fin],[stock_fin1],convert(datetime, [FECHA_VENCIMIENTO], 103) as fec_exp, GETDATE() as fechap   FROM [SIGSALUD].[dbo].[TCENARE_POST]





SELECT *
  FROM [SIGSALUD].[dbo].[TCENARE_POST] where FECHA_VENCIMIENTO is null



SELECT TOP 1 ITEM, FECHA_VENCIMIENTO FROM INGRESOD WHERE ITEM  = '170047' ORDER BY FECHA_VENCIMIENTO DESC



SELECT TOP 1 ITEM, FECHA_VENCIMIENTO FROM INGRESOD WHERE ITEM  = '170051' ORDER BY FECHA_VENCIMIENTO DESC


SELECT TOP 1 ITEM, FECHA_VENCIMIENTO FROM INGRESOD WHERE ITEM  = '171450' AND FECHA_VENCIMIENTO > GETDATE()  ORDER BY FECHA_VENCIMIENTO ASC



SELECT ITEM, FECHA, FECHA_VENCIMIENTO FROM KARDEX WHERE ALMACEN = 'F' ORDER BY OPERACION DESC


select * from [SIGSALUD].[dbo].[TCENARE_POST] where CODIGO_MED = '05335'


select CODIGO_EJE, CODIGO_PRE, CODIGO_MED, PRECIO, SUM(STOCK_FIN) as STOCK_FIN, sum(STOCK_FIN1) as STOCK_FIN1, FECHA_VENCIMIENTO from [SIGSALUD].[dbo].[TCENARE_POST] 
 where CODIGO_med not in ('', '0') group by CODIGO_MED, CODIGO_EJE, CODIGO_PRE, PRECIO, FECHA_VENCIMIENTO order by CODIGO_MED asc 
 having CODIGO_MED = '05335'
 
16231	228
772	172

SELECT [codigo_eje],[codigo_pre], [nombre] ,[codigo_med],[precio],[stock_fin],[stock_fin1],convert(datetime, [FECHA_VENCIMIENTO], 103) as fec_exp, GETDATE() as fechap   FROM [SIGSALUD].[dbo].[TCENARE_POST]
1066



where CODIGO_MED = '05335'
g

