/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [TIPO_DOCUMENTO]
      ,[DESCRIPCION]
      ,[ESTADO]
  FROM [TRAMITE].[dbo].[TIPO_DOCUMENTO] order by descripcion asc
  
  nacimiento
  use TRAMITE
  select * from EXPEDIENTE  where  ASUNTO like '%informe medico%'
  
  /* discapacidad */
  
  tipo_documento = 17
  
/* nacimiento */  
  use TRAMITE
  select * from EXPEDIENTE  where ASUNTO like '%CONSTANCIA DE NACI%'

/* historia clinica */
  use TRAMITE
  select * from EXPEDIENTE  where  ASUNTO like '%HISTORIA CLINICA%'

/* informe medico */
use TRAMITE
  select * from EXPEDIENTE  where  ASUNTO like '%informe medico%'
  

/* apelacion  */
use TRAMITE
  select * from EXPEDIENTE  where  ASUNTO like '%apelacion DE PROCESO%'
  
  
  select * from EXPEDIENTE  where  ASUNTO like '%DISCAPACIDAD%'
  
  USE TRAMITE
  SELECT 'CERTIFICADO DE DISCAPACIDAD ' AS  TITULO, EXPEDIENTE, FECHA, NOMBRE, ASUNTO FROM EXPEDIENTE WHERE FECHA BETWEEN CONVERT(DATETIME, '2015-07-01', 101) AND CONVERT(DATETIME, '2015-12-31', 101) 
     AND ASUNTO like '%CERTIFICADO DE DISCAPACIDAD%'
UNION ALL      
 SELECT '----------------------------' AS  TITULO, '------------' as EXPEDIENTE, '' as FECHA, '-------' as NOMBRE, '-------' as ASUNTO 
  UNION ALL 
  SELECT 'CONSTANCIA DE NACIMIENTO ' AS  TITULO, EXPEDIENTE, FECHA, NOMBRE, ASUNTO FROM EXPEDIENTE WHERE FECHA BETWEEN CONVERT(DATETIME, '2015-07-01', 101) AND CONVERT(DATETIME, '2015-12-31', 101) 
    AND  ASUNTO like '%CONSTANCIA DE NACI%'
UNION ALL      
 SELECT '----------------------------' AS  TITULO, '------------' as EXPEDIENTE, '' as FECHA, '-------' as NOMBRE, '-------' as ASUNTO 
  UNION ALL 
  SELECT 'COPIAS DE HISTORIA CLINICA ' AS  TITULO, EXPEDIENTE, FECHA, NOMBRE, ASUNTO FROM EXPEDIENTE WHERE FECHA BETWEEN CONVERT(DATETIME, '2015-07-01', 101) AND CONVERT(DATETIME, '2015-12-31', 101) 
   AND  ASUNTO like  '%HISTORIA CLINICA%'
 UNION ALL      
 SELECT '----------------------------' AS  TITULO, '------------' as EXPEDIENTE, '' as FECHA, '-------' as NOMBRE, '-------' as ASUNTO 
  UNION ALL 
  SELECT 'INFORME MEDICO ' AS  TITULO, EXPEDIENTE, FECHA, NOMBRE, ASUNTO FROM EXPEDIENTE WHERE FECHA BETWEEN CONVERT(DATETIME, '2015-07-01', 101) AND CONVERT(DATETIME, '2015-12-31', 101) 
   AND ASUNTO like  '%informe medico%'
 UNION ALL      
 SELECT '----------------------------' AS  TITULO, '------------' as EXPEDIENTE, '' as FECHA, '-------' as NOMBRE, '-------' as ASUNTO 
  UNION ALL 
  SELECT 'RECURSOS DE APELACION DE PROCESO DE SELECCION ' AS  TITULO, EXPEDIENTE, FECHA, NOMBRE, ASUNTO FROM EXPEDIENTE WHERE FECHA BETWEEN CONVERT(DATETIME, '2015-07-01', 101) AND CONVERT(DATETIME, '2015-12-31', 101) 
   AND ASUNTO like  '%apelacion DE PROCESO%'


