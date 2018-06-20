
select * from [SIGSALUD].[dbo].[TRANSFERENCIAC]  where TRANSFERENCIAID = '18000190'
select * from [SIGSALUD].[dbo].[TRANSFERENCIAD]  where TRANSFERENCIAID = '18000190'



select * from [SIGSALUD].[dbo].[INGRESOC]  where INGRESOID  = '18000190'
select * from [SIGSALUD].[dbo].[INGRESOD]  where INGRESOID = '18000190'

select * from [SIGSALUD].[dbo].[STOCK] where ITEM = '170657'
select * from [SIGSALUD].[dbo].[STOCK] where ITEM = '170654'


select * from [SIGSALUD].[dbo].[INGRESOC]  where INGRESOID  = '18000190'
select * from [SIGSALUD].[dbo].[INGRESOD]  where INGRESOID = '18000190'

select * from [SIGSALUD].[dbo].[STOCK] where ITEM = '170657'
select * from [SIGSALUD].[dbo].[STOCK] where ITEM = '170654'

select * from [SIGSALUD].[dbo].[STOCK] where ITEM IN ('170654', '170657', '170660', '170815', '170927', '170929')

SELECT 6*12 

SELECT * FROM [SIGSALUD].[dbo].[KARDEX] WHERE ALMACEN = 'A' AND ITEM = '170815' ORDER BY OPERACION DESC

NO JALO :

170815
170927
170929
170657

JALO:
170654
170660

SELECT TOP 1 * FROM [SIGSALUD].[dbo].[KARDEX] WHERE ALMACEN = 'A' AND ITEM = '170815'  ORDER BY OPERACION DESC
SELECT TOP 1 * FROM [SIGSALUD].[dbo].[KARDEX] WHERE ALMACEN = 'A' AND ITEM = '170654'  ORDER BY OPERACION DESC



SELECT * FROM [SIGSALUD].[dbo].[PACIENTE] WHERE HISTORIA = '0233346'
SELECT * FROM [SIGSALUD].[dbo].[PACIENTE] WHERE HISTORIA = '0233526'

SELECT * FROM [SIGSALUD].[dbo].[PACIENTE] WHERE PACIENTE  = '2016258549'
SELECT * FROM [SIGSALUD].[dbo].[ATENCION_SEGURO] WHERE PACIENTE  = '2016258549'

SELECT * FROM [SIGSALUD].[dbo].[ORDENC] WHERE ORDENID = '1716014976' 
SELECT * FROM [SIGSALUD].[dbo].[ORDEND] WHERE ORDENID = '1716014976' 


UPDATE [SIGSALUD].[dbo].[ORDENC] SET PACIENTE = '2016258729',  NOMBRE = 'CORDOVA PEREZ CLOTILDE'  WHERE ORDENID = '1716014976' 
UPDATE [SIGSALUD].[dbo].[CUENTA] SET  PACIENTE = '2016258729',  NOMBRE = 'CORDOVA PEREZ CLOTILDE'  WHERE PACIENTE  = '2016258549'
DELETE FROM [SIGSALUD].[dbo].[ATENCION_SEGURO] WHERE PACIENTE  = '2016258549'
DELETE FROM [SIGSALUD].[dbo].[PACIENTE] WHERE PACIENTE  = '2016258549'


SELECT * FROM [SIGSALUD].[dbo].[CUENTA] WHERE PACIENTE  = '2016258549'



-- Permite agregar item en el kardex, actualizando el stock

DECLARE @lc_id_operacion char(9) = (SELECT  TOP 1 CONVERT(CHAR(9), (CONVERT(INT, OPERACION) + 1))  FROM [SIGSALUD].[dbo].[KARDEX] ORDER BY CONVERT(INT, OPERACION) DESC)
declare @lc_almacen varchar(2) = 'A'
declare @lc_item VARCHAR(13) = '170927'
declare @lc_tipo_transaccion varchar(5) = 'ICO'
DECLARE @ld_nro_transaccion varchar(12) = '18000190'
declare @ln_stock int  = (select stock from [SIGSALUD].[dbo].[stock] where ITEM = @lc_item and ALMACEN = @lc_almacen)
declare @ln_cantidad int = 1500
declare @ln_saldo int = @ln_stock + @ln_cantidad
declare @ln_precio numeric(18,3) = (select top 1 PRECIO  from [SIGSALUD].[dbo].[kardex] where ITEM = @lc_item and ALMACEN = @lc_almacen ORDER BY CONVERT(INT, OPERACION) DESC)
INSERT INTO [SIGSALUD].[dbo].[KARDEX]([ALMACEN],[ITEM],[FECHA],[TIPO_TRANSACCION],[IDTRANSACCION],[STOCK],[CANTIDAD],[SALDO],[PRECIO],[PROMEDIO],[LABORATORIO],[MARCA],
    [LOTE], [REGISTRO], [FECHA_VENCIMIENTO],[OPERACION])
     VALUES (@lc_almacen, @lc_item, GETDATE(), @lc_tipo_transaccion, @ld_nro_transaccion, @ln_stock, @ln_cantidad, @ln_saldo, @ln_precio, 0.0, '0','','','','',@lc_id_operacion)
UPDATE [SIGSALUD].[dbo].[STOCK] SET STOCK = @ln_saldo WHERE ITEM = @lc_item AND ALMACEN = @lc_almacen




select * from [SIGSALUD].[dbo].[KARDEX] where ITEM = '170927' AND ALMACEN = 'A' order by CONVERT(INT, OPERACION) desc
select * from [SIGSALUD].[dbo].[STOCK] where ITEM = '170927'



-- RESOL�UICONJ DE PROEBLA 
/*
UPDATE [SIGSALUD].[dbo].[ORDENC] SET PACIENTE = '2016258729',  NOMBRE = 'CORDOVA PEREZ CLOTILDE'  WHERE ORDENID = '1716014976' 
UPDATE [SIGSALUD].[dbo].[CUENTA] SET  PACIENTE = '2016258729',  NOMBRE = 'CORDOVA PEREZ CLOTILDE'  WHERE PACIENTE  = '2016258549'
DELETE FROM [SIGSALUD].[dbo].[ATENCION_SEGURO] WHERE PACIENTE  = '2016258549'
DELETE FROM [SIGSALUD].[dbo].[PACIENTE] WHERE PACIENTE  = '2016258549'

*/


SELECT * FROM [SIGSALUD].[dbo].[KARDEX] WHERE ALMACEN = 'A' AND ITEM = '170815' ORDER BY OPERACION DESC
SELECT * FROM [SIGSALUD].[dbo].[V_KARDEX] WHERE ALMACEN = 'A' AND ITEM = '170815' ORDER BY OPERACION DESC

SELECT * FROM [SIGSALUD].[dbo].[KARDEX] WHERE ALMACEN = 'A' AND ITEM IN ('170815', '170927', '170929', '170657')  AND IDTRANSACCION = '18000190' 

UPDATE [SIGSALUD].[dbo].[KARDEX] SET LABORATORIO = '0' WHERE ALMACEN = 'A' AND ITEM IN ('170815', '170927', '170929', '170657')  AND IDTRANSACCION = '18000190' 

NO JALO :

170815
170927
170929
170657


