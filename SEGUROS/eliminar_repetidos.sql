/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT   [ENTIDADSIS]
      ,[NOMBRE]
  FROM [SIGSALUD].[dbo].[ENTIDADSIS]
  
  
  /* SELECT * INTO ENTIDADSIS_BACKUP FROM ENTIDADSIS */
  
  /* INSERT INTO ENTIDADSIS (ENTIDADSIS, NOMBRE)
      SELECT ENTIDADSIS, NOMBRE FROM ENTIDADSIS_RENAES */
      
      select SUBSTRING(nombre, 5, 100) as nnom from ENTIDADSIS where NOMBRE like '%P.S. P.S. %'
       select * from ENTIDADSIS where NOMBRE like '%P.S. P.S. %'
      
    /*   update entidadsis set nombre = SUBSTRING(nombre, 5, 100) where NOMBRE like '%P.S. P.S. %' */
  
  
        select * from ENTIDADSIS where NOMBRE like '%P.S.%'
        
        select SUBSTRING(nombre, 5, 100) as nnom from ENTIDADSIS where NOMBRE like '%C.S. %'
        
       select * from ENTIDADSIS where NOMBRE like '%C.S.c.s %'
  