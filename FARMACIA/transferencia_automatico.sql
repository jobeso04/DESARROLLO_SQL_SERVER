select * from V_STOCK where ALMACEN = 'F' and STOCK > 0 ORDER BY NOMBRE 

SELECT * FROM dbo.TRANSFERENCIAC ORDER BY TRANSFERENCIAID DESC


SELECT * FROM  TRANSFERENCIAC WHERE TRANSFERENCIAID = '18000163' 
SELECT * FROM  TRANSFERENCIAD WHERE TRANSFERENCIAID = '18000163' 


SELECT '18000163' AS TRANSFERENCIAID, A.ITEM, STOCK AS CANTIDAD FROM V_STOCK A LEFT JOIN PRECIO B ON A.ITEM = B.ITEM 
 where ALMACEN = 'F' and STOCK > 0 AND A.ITEM <> '170291' 

select 


0.078
SELECT TOP 1 PRECIOPUB  FROM v_PRECIO WHERE ITEM = '170291'  ORDER BY FECHA DESC
SELECT *  FROM v_PRECIO WHERE ITEM = '170291'  ORDER BY FECHA DESC

SELECT * FROM ITEM 