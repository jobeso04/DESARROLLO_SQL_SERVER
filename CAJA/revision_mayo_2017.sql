/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *  FROM [SIGSALUD].[dbo].[TARIFARIO_MAYO_2017] ORDER BY LEN(CODCPT) ASC



SELECT * FROM ITEM WHERE CODCPT = '752'


SELECT nro, item, codcpt, nombre  FROM [SIGSALUD].[dbo].[TARIFARIO_MAYO_2017] where nombre like 'riesgo%'




use sigsalud
select precioa from precio where item = '63466'


select precioe, precioh from precio where item = (select ITEM from ITEM where CODCPT = '9919902' and ACTIVO = '7')


select * from [SIGSALUD].[dbo].[TARIFARIO_MAYO_2017] where nombre like '%presion arte%'






  
  