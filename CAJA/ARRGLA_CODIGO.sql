
SELECT * FROM ITEM WHERE ITEM LIKE '5%' ORDER BY ITEM ASC
SELECT * FROM ITEM WHERE NOMBRE LIKE '%RADIOLOGICO%'

SELECT * FROM ITEM WHERE ITEM = '01002'.
SELECT * FROM PRECIO WHERE ITEM LIKE '%1002%'

SELECT * FROM GRUPO_LIQUIDACION

SELECT * FROM ITEM WHERE GRUPO_LIQUIDACION = '08'
SELECT * FROM ITEM WHERE ITEM = '50695'
SELECT * FROM PRECIO WHERE ITEM01'08007'



SELECT * FROM ITEM WHERE ITEM LIKE '5%' ORDER BY ITEM ASC

SELECT * FROM PRECIO WHERE ITEM LIKE '5%' ORDER BY ITEM ASC
SELECT * FROM ITEM WHERE ITEM = '51202'

SELECT * FROM ITEM WHERE ITEM = '51204'
SELECT * FROM ITEM WHERE ITEM = '51205'


SELECT CLASIFICADOR, NOMBRE FROM [SIGSALUD].[dbo].[CLASIFICADOR] where clasificador in  (SELECT CLASIFICADOR FROM ITEM WHERE ITEM in ('51204', '51205'))

SELECT * FROM [SIGSALUD].[dbo].[CLASIFICADOR]