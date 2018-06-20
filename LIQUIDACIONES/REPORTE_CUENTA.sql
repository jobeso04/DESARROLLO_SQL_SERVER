USE SIGSALUD 
declare @lidcuenta varchar(13) = '1617820'
truncate table tmp_cta_rev
INSERT INTO [SIGSALUD].[dbo].[TMP_CTA_REV]([cuentaid], [estado], [importe])
select cuentaid, estado, importe from CUENTA order by FECHA_APERTURA desc
select CUENTAID, ESTADO, IMPORTE from tmp_cta_rev where CUENTAID = '1617820'
select SUM(TOTAL) AS TOTAL from CUENTADET where CUENTAID = '1617820'



  USE SIGSALUD 
  truncate table tmp_cta_rev
  INSERT INTO [SIGSALUD].[dbo].[TMP_CTA_REV]([cuentaid], [estado], [importe])
  select cuentaid, estado, importe from CUENTA order by FECHA_APERTURA desc





select CUENTAID, IMPORTE, * from CUENTA order by FECHA_APERTURA desc



select * from V_CUENTA order by FECHA_APERTURA desc

select * from CUENTADET where CUENTAID = '1643996'


declare @lidcuenta varchar(13) = '1639631'
SELECT ESTADO, CUENTAID, PACIENTE, HISTORIA, NOMBRE, SEGURO, NOMBRE_SEGURO, IMPORTE, DESCONSULTORIO FROM v_CUENTA WHERE CUENTAID = @lidcuenta
SELECT CUENTAID, CODCPT, ITEM, NOMBRE, CANTIDAD, PRECIO, IMPORTE, DESCUENTO, TOTAL, DESCLASE, ORDENID, SISMED, FECHA_APERTURA, ESTADO FROM V_CUENTADET WHERE CUENTAID = @lidcuenta
select case when SUM(TOTAL) is null then 0 else SUM(TOTAL) end  AS TOTAL from CUENTADET where CUENTAID = @lidcuenta


select 0.720 + 1.280 + 0.770 + 0.720 + 30.000 + 38.000

select * from cuenta where cuentaid = '1637138' and SEGURO = '02'

select * from cuenta where SEGURO = '02' and ESTADO = '2' order by FECHA_APERTURA desc


SELECT cuentaid  FROM [SIGSALUD].[dbo].[TMP_CTA_REV]
declare @lidcuenta varchar(13) = '1631949'
SELECT ESTADO, CUENTAID, PACIENTE, HISTORIA, NOMBRE, SEGURO, NOMBRE_SEGURO, IMPORTE, DESCONSULTORIO FROM v_CUENTA WHERE CUENTAID = @lidcuenta
SELECT CUENTAID, CODCPT, ITEM, NOMBRE, CANTIDAD, PRECIO, IMPORTE, DESCUENTO, TOTAL, DESCLASE, ORDENID, SISMED, FECHA_APERTURA, ESTADO FROM V_CUENTADET WHERE CUENTAID = @lidcuenta
select case when SUM(TOTAL) is null then 0 else SUM(TOTAL) end  AS TOTAL from CUENTADET where CUENTAID = @lidcuenta


SELECT cuentaid  FROM [SIGSALUD].[dbo].[TMP_CTA_REV]