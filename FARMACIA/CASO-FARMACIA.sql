
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







SELECT * FROM [SIGSALUD].[dbo].[KARDEX] ORDER BY OPERACION DESC


