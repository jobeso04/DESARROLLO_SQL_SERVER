/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 5000 [ENTIDADSIS]
      ,[codigoSIS]
      ,[NOMBRE]
      ,[IdUbigeo]
      ,[Categoria]
      ,[Ejecutora]
      ,[Disa]
      ,[estado]
      ,[clas] 
  FROM [SIGSALUD].[dbo].[ENTIDAD_RENAES] where nombre like '%SAN ANTONIO%' ORDER BY CODIGOSIS ASC
  
  SELECT TOP 5000 [ENTIDADSIS]
      ,[codigoSIS]
      ,[NOMBRE]
      ,[IdUbigeo]
      ,[Categoria]
      ,[Ejecutora]
      ,[Disa]
      ,[estado]
      ,[clas] 
  FROM [SIGSALUD].[dbo].[ENTIDAD_RENAES] ORDER BY Categoria ASC
  
  SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA BETWEEN '1' AND '8' ORDER BY Categoria ASC
  SELECT * FROM NIVEL_ESS
  
  SELECT * FROM NIVEL_ESS
  SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA BETWEEN '1' AND '4'  ORDER BY Categoria ASC 
   SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA = '1'
    SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA = '2'
    SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA = '3'
    SELECT * FROM ENTIDAD_RENAES WHERE CATEGORIA = '4' and NOMBRE like '%hospital%'
    
    
    alter table ENTIDAD_RENAES add cnombre 
    
    
        Alter Table ENTIDAD_RENAES add cnombre nchar(50)
        select * from ENTIDAD_RENAES where ENTIDADSIS = 'A002005'
        
    
  
  
  
  
  