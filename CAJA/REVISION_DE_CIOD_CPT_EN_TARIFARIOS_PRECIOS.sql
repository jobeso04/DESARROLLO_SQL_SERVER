/*
SELECT * FROM ITEM WHERE NOMBRE LIKE '%CURACION%' ORDER BY ITEM DESC
SELECT * FROM PRECIO WHERE ITEM IN ('50592', '50591', '50587')

*/

USE SIGSALUD
DECLARE @lc_codcpt varchar(15) = '80063'
/* EXCISION DE UÑA -11750 NO HA VARIADO PRECIO */
SELECT * FROM [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] WHERE CODCPT = @lc_codcpt
SELECT *  FROM dbo.TARIFARIO_ABRIL_2017 WHERE CODCPT = @lc_codcpt
SELECT *  FROM dbo.TARIFARIO_MARZO_2017 WHERE CODCPT = @lc_codcpt AND  ACTIVO = '1'
SELECT *  FROM dbo.TARIFARIO_MARZO_2017 WHERE CODCPT = @lc_codcpt AND  ACTIVO = '7'
SELECT *  FROM dbo.ITEM WHERE CODCPT = @lc_codcpt AND  ACTIVO = '1' AND SUBSTRING(ITEM,1,1) = '5'
SELECT * FROM PRECIO WHERE ITEM IN (SELECT ITEM  FROM dbo.ITEM WHERE CODCPT = @lc_codcpt AND  ACTIVO = '1' AND SUBSTRING(ITEM,1,1) = '5')
SELECT *  FROM dbo.ITEM WHERE CODCPT = @lc_codcpt AND  ACTIVO = '1'
SELECT *  FROM dbo.ITEM WHERE CODCPT = @lc_codcpt AND  ACTIVO = '7'
SELECT PRECIOA AS PRECIO_PAGANTE, PRECIOB AS PRECIO_CON_30_DESCUENTO, PRECIOC AS PRECIO_DESCUENTO_50, PRECIOD AS PRECIO_100_DESCUENTO, PRECIOF AS PRECIO_SUSALUD,
   PRECIOG AS PRECIO_ESSALUD, PRECIOI AS PRECIO_FFAA, PRECIOJ AS PRECIO_DEMANDA_PUBLICO, PRECIOK AS PRECIO_CONVENIOS  FROM PRECIO WHERE ITEM IN (SELECT ITEM FROM ITEM WHERE CODCPT =  @lc_codcpt AND ACTIVO = '1')
SELECT PRECIOE AS PRECIO_SIS, PRECIOH AS PRECIO_SOAT  FROM PRECIO WHERE ITEM IN (SELECT ITEM FROM ITEM WHERE CODCPT =  @lc_codcpt AND ACTIVO = '7')


select * from ITEM where NOMBRE like '%urinaria%' order by ITEM desc


select * from PRECIO where ITEM = '52642'



/* 86705 - a 25 soles */
/* 76817 - a 35 soles */

/* 76775 - 25 soles */
/* 76705 a 25 soles */
/* 80061 - a 50 soles */
/* 76856 - a 25 soles */
/* 99219 -  15 soles */
/* AD017 - A 20 SOLES */
/* 80063 A 52 SOLES */
/* 80055 - A 55 SOLES */
/* 15878 - A 10 SOLES */



UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 25 WHERE CODCPT = '86705'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 35 WHERE CODCPT = '76817'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 25 WHERE CODCPT = '76775'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 25 WHERE CODCPT = '76705'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 50 WHERE CODCPT = '80061'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 25 WHERE CODCPT = '76856'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 15 WHERE CODCPT = '99219'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 20 WHERE CODCPT = 'AD017'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 52 WHERE CODCPT = '80063'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 55 WHERE CODCPT = '80055'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 25 WHERE CODCPT = '73600'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 30 WHERE CODCPT = '73560'
UPDATE [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] SET PRECIOA = 10 WHERE CODCPT = '15878'

















SELECT SERVICIO, CODCPT, NOMBRE, PRECIO_MARZO, PRECIOA, PRECIOSIS, PRECIOSOAT FROM [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] WHERE PROCESO = 'V' and codcpt = '76775'

/*
SELECT SERVICIO, CODCPT, NOMBRE, PRECIO_MARZO, PRECIOA, PRECIOSIS, PRECIOSOAT FROM [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] WHERE PROCESO = 'V'  ORDER BY NOMBRE ASC
*/

SELECT * FROM [SIGSALUD].[dbo].[TARIFARIO_ABRIL_2017_V2] WHERE CODCPT = '80063'