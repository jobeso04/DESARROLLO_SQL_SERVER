UPDATE ITEM SET CLASIFICADOR = '1.3.34.1.99' WHERE CLASIFICADOR = '1.3.3.4.1.99'  AND SUBSTRING(ITEM,1,1) = '6'


UPDATE ITEM SET CLASIFICADOR = '1.3.34.16' WHERE CLASIFICADOR = '1.3.3.4.16'  AND SUBSTRING(ITEM,1,1) = '6'


INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
     VALUES ('1.3.34.15', 'CIRUGIA', '101', '125', '', 1)

UPDATE ITEM SET CLASIFICADOR = '1.3.34.14' WHERE CLASIFICADOR = '1.3.3.4.14'  AND SUBSTRING(ITEM,1,1) = '6'

SELECT * FROM ITEM WHERE CLASIFICADOR = '1.3.34.11'  AND SUBSTRING(ITEM,1,1) = '6'


UPDATE ITEM SET CLASIFICADOR = '1.3.34.13' WHERE CLASIFICADOR = '1.3.3.4.13'  AND SUBSTRING(ITEM,1,1) = '6'


SELECT * FROM CLASIFICADOR ORDER BY CLASIFICADOR ASC


SELECT * FROM ITEM WHERE CODCPT IN ('99219') AND SUBSTRING(ITEM,1,1) = '6'

UPDATE ITEM SET CLASIFICADOR = '1.3.34.14' WHERE CODCPT IN ('99219') AND SUBSTRING(ITEM,1,1) = '6'


SELECT * FROM ITEM WHERE CODCPT IN ('99283A') AND SUBSTRING(ITEM,1,1) = '6'



SELECT * FROM ITEM WHERE CODCPT IN ('99231') AND SUBSTRING(ITEM,1,1) = '6'



UPDATE ITEM SET CLASIFICADOR = '1.3.34.14' WHERE CODCPT IN ('99283A') AND SUBSTRING(ITEM,1,1) = '6'


SELECT * FROM ITEM WHERE ITEM IN ('60227')

SELECT * FROM ITEM WHERE CODCPT IN ('10060')  AND SUBSTRING(ITEM,1,1) = '6'


UPDATE ITEM SET CLASIFICADOR = '1.3.34.11' WHERE CODCPT IN ('10060')  AND SUBSTRING(ITEM,1,1) = '6'



SELECT * FROM V_PAGOD WHERE ITEM = '60177'


SELECT * FROM V_PAGOC WHERE PAGOID = '17108425'



UPDATE ITEM SET CLASIFICADOR = '1.3.34.16' WHERE CODCPT IN (SELECT codcpt FROM ITEM WHERE ITEM IN ('60227', '63226', '63191', '63226', '63399')) 
 AND SUBSTRING(ITEM,1,1) = '6'


UPDATE ITEM SET CLASIFICADOR = '1.3.34.16' WHERE CODCPT IN (SELECT codcpt FROM ITEM WHERE ITEM IN ('63217', '63273'))  AND SUBSTRING(ITEM,1,1) = '6'


UPDATE ITEM SET CLASIFICADOR = '1.3.34.23' WHERE CODCPT IN (SELECT codcpt FROM ITEM WHERE ITEM IN ('63174'))  AND SUBSTRING(ITEM,1,1) = '6'















LOS ESTUDIOS DE DILUCI�N DE INDICADOR TALES COMO LA DILUCI�N 
T�RMICA O CON COLORANTES, INCLUYENDO LACATETERIZACI�N ARTERIAL 
Y/O VENOSA; CON MEDICI�N DEL GASTO CARDIACO (PROCEDIMIENTO SEPARADO)