USE SIGSALUD

GASA ESTERIL
SELECT * FROM KARDEX WHERE ITEM = '170787' ORDER BY FECHA DESC
SELECT * FROM KARDEX WHERE ITEM = '170787' AND ALMACEN = 'F' ORDER BY FECHA DESC
SELECT * FROM KARDEX WHERE ITEM = '170787' AND ALMACEN = 'A' ORDER BY FECHA DESC
16352718 

SELECT * FROM KARDEX WHERE OPERACION = '16352718'

UPDATE KARDEX SET ALMACEN = 'F' WHERE OPERACION = '16352718'


/* ITEM : 170200 */
 
 SELECT * FROM KARDEX WHERE ITEM = '170200' ORDER BY FECHA DESC

