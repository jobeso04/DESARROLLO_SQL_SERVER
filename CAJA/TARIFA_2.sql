SELECT ITEM, ID, ''  FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]


50000  

6 3591   


SELECT ITEM, ID, ''  FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]

SELECT RIGHT('0000' + Ltrim(Rtrim(CONVERT(VARCHAR(4), ID)),5) FROM ITEM 

SELECT RIGHT('00000' + Ltrim(Rtrim(CONVERT(VARCHAR(4), ID)))),5) FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]

SELECT '6' + RIGHT('0000' + Ltrim(Rtrim(CONVERT(VARCHAR(4), ID))),4) FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]

SELECT CONVERT(VARCHAR(4), ID) AS ITEMX FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]

UPDATE [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017] SET ITEM = '6' + RIGHT('0000' + Ltrim(Rtrim(CONVERT(VARCHAR(5), ID))),5)

UPDATE [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017] SET ABREVIATURA = NOMBRE 

SELECT * FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]

INSERT INTO [SIGSALUD].[dbo].[ITEM]([ITEM], [NOMBRE], [ABREVIATURA], [GRUPO_RECAUDACION], [CLASIFICADOR], [GRUPO_LIQUIDACION], MODULO) 
SELECT [ITEM], [NOMBRE], [ABREVIATURA], [GRUPO_RECAUDACION], [CLASIFICADOR], [GRUPO_LIQUIDACION], MODULO FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017]


SELECT [ITEM], [NOMBRE], [ABREVIATURA], [GRUPO_RECAUDACION], [CLASIFICADOR], [GRUPO_LIQUIDACION], MODULO FROM ITEM 

SELECT [CLASIFICADOR] FROM [SIGSALUD].[dbo].[TARIFARIO_GENERAL_2017] GROUP BY [CLASIFICADOR]

SELECT * FROM CLASIFICADOR WHERE CLASIFICADOR IN ()


  
  USE SIGSALUD
  SELECT * FROM ITEM WHERE SUBSTRING(ITEM,1,1) = '5' AND MODULO = 'CAJA'  ORDER BY ITEM ASC
  
  SELECT * FROM GRUPO_RECAUDACION ORDER BY GRUPO_RECAUDACION ASC