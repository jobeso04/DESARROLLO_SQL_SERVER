/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [ITEM]
      ,[NOMBRE]
      ,[ABREVIATURA]
      ,[GRUPO_RECAUDACION]
      ,[CLASIFICADOR]
      ,[GRUPO_LIQUIDACION]
      ,[GRUPO_TARIFARIO]
      ,[PRESENTACION]
      ,[FAMILIA]
      ,[CLASE]
      ,[GENERICO]
      ,[LABORATORIO]
      ,[FRACCION]
      ,[INTERFASE1]
      ,[VARIABLE]
      ,[MODULO]
      ,[ACTIVO]
      ,[SYSINSERT]
      ,[SYSUPDATE]
      ,[SYSDELETE]
      ,[INTERFASE2]
      ,[PETITORIO]
      ,[STOCK]
      ,[STOCK_MINIMO]
      ,[ITEM_EXCLUSION]
      ,[ESTADO_A_CUENTA]
      ,[STOCK_CRITICO]
      ,[DISPONIBILIDAD]
      ,[APLICA_DSCTO]
      ,[PRESENTA]
      ,[CONCENTRA]
      ,[NOMBRECORTO]
      ,[CODCPT]
      ,[SECCION]
      ,[SUBSECCION]
      ,[REVISION]
      ,[agregar_cpt]
  FROM [SIGSALUD].[dbo].[ITEM] order by item desc
  
  use sigsalud
  select* from item where agregar_cpt = 'A' and ACTIVO = '7'


select * from ITEM where 
CODCPT in (SELECT RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where operacion = 'NO' ) and ACTIVO = '7'


select * from ITEM where 
CODCPT in (SELECT RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where operacion = 'NO' ) and ACTIVO = '1'

update ITEM set NOMBRE = SUBSTRING(nombre, 1,250), ABREVIATURA = SUBSTRING(nombre, 1,250) where 



SELECT *, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where operacion = 'NO' 
select nombre, abreviatura from ITEM where CODCPT = '19200' and ACTIVO = '7'

update ITEM set NOMBRE = 'MASTECTOMÍA, RADICAL, INCLUYENDO MÚSCULOS PECTORALES, GANGLIOS LINFÁTICOS AXILARES', ABREVIATURA = 'MASTECTOMÍA, RADICAL, INCLUYENDO MÚSCULOS PECTORALES, GANGLIOS LINFÁTICOS AXILARES' where CODCPT = '19200'


SELECT *, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where operacion = 'NO' 

SELECT *, convert(varchar(250), nombre) as item, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT)))  = '78802' 

use sigsalud
select * from ITEM where CODCPT = '78802'

upd


  SELECT *, convert(varchar(250), nombre) as item_nuevo, RTRIM(LTRIM(CONVERT(VARCHAR(20), CPT))) AS CODCPT  FROM [SIGSALUD].[dbo].[NTARIFA_JUNIO23] where operacion = 'NO'  order by cpt desc
  
  
  
use sigsalud
select * from ITEM order by ITEM desc