/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [nro]
      ,[nfua_errado]
      ,[nfua_ok]
      ,[nombres]
      ,[fecha_atencion]
      ,[hora_atencion]
      ,[tipo_prestacion]
      ,[origen]
      ,[fecha_impresion]
  FROM [SIGSALUD].[dbo].[fuas132] WHERE NOMBRES = '' ORDER BY NFUA_OK ASC
  
 /*  TRUNCATE TABLE [SIGSALUD].[dbo].[nfuas1443] */
   SELECT [IDSEGURO]
      ,[NUMFUA]
      ,[NFUA_ANTIGUO]
      ,[NOMBRES]
  FROM [SIGSALUD].[dbo].[NFUAS] WHERE NUMFUA = '2101520069855'
  
TRUNCATE TABLE [SIGSALUD].[dbo].[nfuas1443] 
 SELECT NUMFUA_ANTERIOR, NUMFUA_NUEVO, IDKEY  FROM [SIGSALUD].[dbo].[FUAS_EQUIVALENTES]


  
  USE SIGSALUD
  SELECT * FROM ATENCION_SEGURO WHERE NUMATENCION = '2101520069746'
  
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520069797'
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520069825'
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520069849'
  
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520069849'
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520069850'
  SELECT * FROM V_ATENCION_SEGURO WHERE NRO_ATENCION = '2101520068309'
  
  select * from ATENCION_SEGURO where NUMATENCION = '2101520068309'
  
  select * from ATENCION_SEGURO where NOMBRES like 'solis aquino%'
  
/*   delete from  [SIGSALUD].[dbo].[FUAS_EQUIVALENTES] WHERE  NUMFUA_NUEVO = '2101520069747' */
  
   SELECT NUMFUA_ANTERIOR, NUMFUA_NUEVO, IDKEY  FROM [SIGSALUD].[dbo].[FUAS_EQUIVALENTES]
   

  select * into nfuas1443 from fuas132
  
  SELECT * FROM nfuas1443 ORDER BY nfua_errado ASC
  
  SELECT * FROM nfuas1443 ORDER BY NOMBRES ASC