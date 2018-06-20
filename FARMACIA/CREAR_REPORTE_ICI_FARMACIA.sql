/* PERMITE VER LOS REPORTES ICI - FARMACIA */

/* OPERACION INCIAL : 16393154
OPERACION INAL :  16451753 */


USE SIGSALUD
declare @lcfechames varchar(10) = '201610' 

SELECT '036' AS Codigo_eje, '05947F01' as Codigo_pre, case when substring(NOMBRE,1,8) = 'DONACION' THEN 'D' ELSE 'S' END AS Tipsum, @lcfechames as Annomes, 
SISMED as codigo_med, saldo_antiguo as saldo, precio as Precio, 0 ingre, 0 reingre, salidas_contado as venta, salidas_sis as sis, salidas_sanitaria + salidas_btb as intersan,
0 as fac_perd, SALIDAS_DEFENSA_NACIONAL AS dfecnac, salidas_exonerado as Exo, salidas_soat as Soat, 0 as Credihospi, 0 as Otr_conv, 0 as devol, 0 as vencido, 0 as merma, 0 as distri,
 0 as transf, 0 as ventainst, 0 as dev_ven, 0 as dev_merma, 0 as otras_salida, 0 as stock_fin, 0 as stock_fin1, 0 as req, (salidas_contado + salidas_exonerado + salidas_credito_paciente + SALIDAS_SIS + salidas_sisalud + salidas_soat + salidas_consperu + salidas_sanitaria + salidas_btb + salidas_prg + 
salidas_dona)  as Venta, '' as fec_exp, 0 as Do_saldo, 0 as Do_ingre, 0 as do_con, 0 as do_otr, 0 as do_tot, 0 as do_stk, '' as do_fecexp, getdate() as fecha, 'admin' as usuario, 
item FROM  [dbo].[TMPPARTEDIARIO] 





SELECT ITEM FROM ITEM WHERE INTERFASE2 = '00143'


/**  PARA AÑADIR EL STOCK FINAL */
declare @lstockfarmacia int = (select top 1 saldo from kardex where item = (SELECT ITEM FROM ITEM WHERE INTERFASE2 = '00143') and almacen = 'F' and operacion between '16393154' and '16451753' order by fecha desc)
SELECT @lstockfarmacia


declare @lstockalmacen int = (select top 1 saldo from kardex where item = (SELECT ITEM FROM ITEM WHERE INTERFASE2 = '00143') and almacen = 'A' and operacion between '16393154' and '16451753' order by fecha desc)


SELECT @lstockalmacen

select  @lstockfarmacia + @lstockalmacen stock_total

/* PARA REVISAR FARMACIA */

SELECT TOP 1 SALDO AS SALDO_FARMACIA FROM KARDEX  WHERE ITEM = '170291' AND FECHA BETWEEN CONVERT(DATETIME, '2016-08-31  00:00:00', 20) AND CONVERT(DATETIME, '2016-09-29  00:00:00', 20) AND ALMACEN = 'F' ORDER BY FECHA DESC


SELECT  TOP 1 SALDO AS SALDO_FARMACIA FROM KARDEX  WHERE ITEM = '170291' AND ALMACEN = 'F' ORDER BY FECHA DESC

SELECT  TOP 1 SALDO AS SALDO_FARMACIA, * FROM KARDEX  WHERE ITEM = '170291' AND ALMACEN = 'F' AND FECHA < CONVERT(DATETIME, '2016-08-31  00:00:00', 20)  ORDER BY FECHA DESC

SELECT   * FROM KARDEX  WHERE ITEM = '170291' AND ALMACEN = 'F' AND FECHA <= CONVERT(DATETIME, '2016-08-31  00:00:00', 20)  ORDER BY FECHA DESC




/* PARA REVISAR ALMACEN */

SELECT * FROM KARDEX  WHERE ITEM = '170291' AND FECHA BETWEEN CONVERT(DATETIME, '2016-08-31  00:00:00', 20) AND CONVERT(DATETIME, '2016-09-29  00:00:00', 20) AND ALMACEN = 'A'
SELECT  TOP 1 SALDO FROM KARDEX  WHERE ITEM = '170291' AND ALMACEN = 'A' ORDER BY FECHA DESC

SELECT  TOP 1 SALDO FROM KARDEX  WHERE ITEM = '170291' AND ALMACEN = 'A' AND FECHA < CONVERT(DATETIME, '2016-08-31  00:00:00', 20) ORDER BY FECHA DESC



convert(datetime, '20161023
20:44:11', 120)








/* para añadir la cantidad */
select item, sum(cantidad) as ingre, max(fecha_vencimiento) as fec
 from ingresod where ingresoid in (select INGRESOID from ingresoc where  month(fecha) = 6 and year(fecha) = 2016) group by item  order by item asc
/*************************************/


/**  PARA AÑADIR EL STOCK FINAL */
declare @lstockfarmacia int = (select top 1 saldo from kardex where item = '170956' and almacen = 'F' and operacion between '16232712' and '16282627' order by fecha desc)
declare @lstockalmacen int = (select top 1 saldo from kardex where item = '170956' and almacen = 'A' and operacion between '16232712' and '16282627' order by fecha desc)
select  @lstockfarmacia + @lstockalmacen stock_total

/**************************************/
SELECT *  FROM  [dbo].[TMPPARTEDIARIO] where item = '171080    '

select * from item where item = '171080    '



--------------

al culminar debe arbor el archivo : confi.dbf

camabir en la columna fecha par que coincida con la columna fecha de la table formDet.dbf

tanmbien el coklumna annomes para este caso seria junio:

201606

equivalenmte a anno mes del formdet.dbf

------------------------
en la tabla form:

usar la columna : annomes, igual que formdet.dbf y confi.db
rec_vtas : 



